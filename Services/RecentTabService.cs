using System.Collections.Generic;
using Domain;
using Repositories.Contracts;
using Services.Contracts;

namespace Services
{
    public class RecentTabService : IRecentTabService
    {
        private readonly IRepository<Tab> tabRepository;

        public RecentTabService(IRepository<Tab> tabRepository)
        {
            this.tabRepository = tabRepository;
        }

        public IEnumerable<Tab> GetRecentTabs()
        {
            return tabRepository.GetAll(0, 10, "-CreatedOn");
        }
    }
}
