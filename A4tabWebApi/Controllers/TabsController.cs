using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Domain;
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

        // GET api/tabs
        public IEnumerable<int> Get()
        {
            return tabsRepository.GetAll().Select(x => x.Id).ToList();
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
