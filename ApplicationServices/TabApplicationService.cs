using System.Collections.Generic;
using ApplicationServices.Contracts;
using AutoMapper;
using Domain;
using Services.Contracts;
using WebViewModels;

namespace ApplicationServices
{
    public class TabApplicationService : ITabApplicationService
    {
        private readonly IRecentTabService recentTabService;

        public TabApplicationService(IRecentTabService recentTabService)
        {
            this.recentTabService = recentTabService;
        }

        public IEnumerable<TabViewModel> GetRecentTabs()
        {
            return Mapper.Map<IEnumerable<TabViewModel>>(recentTabService.GetRecentTabs());
        }
    }
}
