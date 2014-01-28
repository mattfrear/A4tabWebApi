using System.Collections.Generic;
using Domain;
using Repositories.Contracts;
using Services.Contracts;

namespace Services
{
    public class TabService : ITabService
    {
        private readonly IRepository<Tab> tabRepository;

        public TabService(IRepository<Tab> tabRepository)
        {
            this.tabRepository = tabRepository;
        }

        public IEnumerable<Tab> Get(TabQuery tabQuery)
        {
            return tabRepository.GetAll(tabQuery);
        }

        public IEnumerable<Tab> GetRecentTabs()
        {
            return tabRepository.GetAll(new TabQuery { Sort = "-Tab.CreatedOn" });
        }
    }
}
