using System.Web.Http;
using ApplicationServices.Contracts;
using Domain;
using Framework.Contracts;

namespace A4tabWebApi.Controllers
{
    [RoutePrefix("api/v1/tabs")]
    public class TabsController : ApiController
    {
        private readonly ITabApplicationService tabApplicationService;
        private readonly IParameterValidator<TabQueryOption> tabQueryValidator;

        public TabsController(ITabApplicationService tabApplicationService, IParameterValidator<TabQueryOption> tabQueryValidator)
        {
            this.tabApplicationService = tabApplicationService;
            this.tabQueryValidator = tabQueryValidator;
        }

        /// <summary>
        /// Gets a list of Tabs
        /// </summary>
        /// <param name="tabQueryOption">Offset: Default: 0. Must be &gt;= 0. Limit: Default: 10. Must be &gt; 0 and &lt;= 100. Sort: Default: Tab.Id. Must be Tab.Id or Tab.Name or Tab.CreatedOn or Tab.ModifiedOn or Artist.Name</param>
        /// <returns>An array of TabViewModel</returns>
        [Route("")]
        public IHttpActionResult Get([FromUri]TabQueryOption tabQueryOption)
        {
            if (tabQueryOption == null)
            {
                tabQueryOption = new TabQueryOption();
            }

            tabQueryValidator.Validate(tabQueryOption);

            if (tabQueryValidator.HasErrors())
            {
                return BadRequest(tabQueryValidator.ToString());
            }

            var tabs = tabApplicationService.GetAll(tabQueryOption);
            return Ok(tabs);
        }

        /// <summary>
        /// Gets the ten newest tabs
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("recent")]
        public IHttpActionResult Recent()
        {
            var tabs = tabApplicationService.GetRecentTabs();
            return Ok(tabs);
        }

        // GET api/tabs/5
        [Route("{id}")]
        public IHttpActionResult Get(int id, [FromUri]TabQueryOption tabQueryOption)
        {
            // TODO implement angular Get page
            // TODO implement importer

            if (tabQueryOption == null)
            {
                tabQueryOption = new TabQueryOption();
            }

            tabQueryValidator.Validate(tabQueryOption);

            if (tabQueryValidator.HasErrors())
            {
                return BadRequest(tabQueryValidator.ToString());
            }

            var tab = tabApplicationService.GetById(id, tabQueryOption);
            return Ok(tab);
        }

        // POST api/tabs
        public void Post(Tab value)
        {
            tabApplicationService.Insert(value);
        }

        // PUT api/tabs/5
        public void Put(Tab value)
        {
        }

        // DELETE api/tabs/5
        public void Delete(int id)
        {
        }
    }
}
