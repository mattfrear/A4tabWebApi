﻿using System.Collections.Generic;
using System.Web.Http;

namespace A4tabWebApi.Controllers
{
    public class TabsController : ApiController
    {
        // GET api/tabs
        public IEnumerable<int> Get()
        {
            return new [] { 1, 2 };
        }

        // GET api/tabs/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/tabs
        public void Post([FromBody]string value)
        {
        }

        // PUT api/tabs/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/tabs/5
        public void Delete(int id)
        {
        }
    }
}
