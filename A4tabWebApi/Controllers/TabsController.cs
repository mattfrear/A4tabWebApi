﻿using System.Web.Http;
using ApplicationServices.Contracts;
using Domain;
using Framework.Contracts;

namespace A4tabWebApi.Controllers
{
    [RoutePrefix("api/v1/tabs")]
    public class TabsController : ApiController
    {
        private readonly ITabApplicationService tabApplicationService;
        private readonly IParameterValidator<QueryOption> tabQueryValidator;

        public TabsController(ITabApplicationService tabApplicationService, IParameterValidator<QueryOption> tabQueryValidator)
        {
            this.tabApplicationService = tabApplicationService;
            this.tabQueryValidator = tabQueryValidator;
        }

        /// <summary>
        /// Gets a list of Tabs
        /// </summary>
        /// <param name="queryOption">Offset: Default: 0. Must be &gt;= 0. Limit: Default: 10. Must be &gt; 0 and &lt;= 100. Sort: Default: Tab.Id. Must be Tab.Id or Tab.Name or Tab.CreatedOn or Tab.ModifiedOn or Artist.Name</param>
        /// <returns>An array of TabViewModel</returns>
        [Route("")]
        public IHttpActionResult Get([FromUri]QueryOption queryOption)
        {
            if (queryOption == null)
            {
                queryOption = new QueryOption();
            }

            tabQueryValidator.Validate(queryOption);

            if (tabQueryValidator.HasErrors())
            {
                return BadRequest(tabQueryValidator.ToString());
            }

            var tabs = tabApplicationService.GetAll(queryOption);
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
        public IHttpActionResult Get(int id)
        {
            // TODO check test coverage of Insert
            // TODO add tests for Get
            // TODO implement angular Get page
            // TODO implement importer

            var tab = tabApplicationService.Get(id);
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
