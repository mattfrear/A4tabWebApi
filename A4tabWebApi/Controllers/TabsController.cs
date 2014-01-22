using System.Collections.Generic;
using System.Web.Http;
using A4tabWebApi.ViewModels;
using AutoMapper;
using Domain;
using Framework;
using Repositories.Contracts;

namespace A4tabWebApi.Controllers
{
    public class TabsController : ApiController
    {
        private readonly IRepository<Tab> tabsRepository;

        public TabsController(IRepository<Tab> tabsRepository)
        {
            this.tabsRepository = tabsRepository;
        }

        /// <summary>
        /// Gets a list of Tabs
        /// </summary>
        /// <param name="offset">Default: 0. Must be >= 0</param>
        /// <param name="limit">Default: 10. Must be > 0 and &lt;= 100.</param>
        /// <param name="sort">Default: Tab.Id. Must be Tab.Id or Tab.Name or Tab.CreatedOn or Tab.ModifiedOn or Artist.Name</param>
        /// <returns></returns>
        
        public IHttpActionResult Get(int offset = 0, int limit = 10, string sort = "Tab.Id")
        {
            var validator = new ParameterValidator();
            validator.Validate(offset >= 0, "offset", "invalid parameter offset - must be greater than or equal to 0. ");
            validator.Validate(limit > 0 && limit <= 100, "limit", "invalid parameter limit - must be greater than 0 and less than or equal to 100. ");
            validator.Validate(sort == "Tab.Id" || sort == "Tab.Name" || sort == "Tab.CreatedOn" || sort == "Tab.ModifiedOn" || sort == "Artist.Name",
                "sort", "invalid parameter sort - must be Tab.Id or Tab.Name or Tab.CreatedOn or Tab.ModifiedOn or Artist.Name. ");

            if (validator.HasErrors())
            {
                return BadRequest(validator.ToString());
            }

            var tabs = tabsRepository.GetAll(offset, limit, sort);
            var results = Mapper.Map<IEnumerable<TabViewModel>>(tabs);
            return Ok(results);
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
