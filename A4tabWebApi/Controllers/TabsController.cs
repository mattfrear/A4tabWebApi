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
        private readonly IParameterValidator<TabQuery> tabQueryValidator;

        public TabsController(ITabApplicationService tabApplicationService, IParameterValidator<TabQuery> tabQueryValidator)
        {
            this.tabApplicationService = tabApplicationService;
            this.tabQueryValidator = tabQueryValidator;
        }

        /// <summary>
        /// Gets a list of Tabs
        /// </summary>
        /// <param name="query">Offset: Default: 0. Must be &gt;= 0. Limit: Default: 10. Must be &gt; 0 and &lt;= 100. Sort: Default: Tab.Id. Must be Tab.Id or Tab.Name or Tab.CreatedOn or Tab.ModifiedOn or Artist.Name</param>
        /// <returns>An array of TabViewModel</returns>
        [Route("")]
        public IHttpActionResult Get([FromUri]TabQuery query)
        {
            if (query == null)
            {
                query = new TabQuery();
            }

            tabQueryValidator.Validate(query);

            if (tabQueryValidator.HasErrors())
            {
                return BadRequest(tabQueryValidator.ToString());
            }

            var tabs = tabApplicationService.Get(query);
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
        public string Get(int id)
        {
            return "value";
        }

        // POST api/tabs
        public void Post(Tab value)
        {
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
