using System.Collections.Generic;
using ApplicationServices.Contracts;
using AutoMapper;
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
            var tabs = recentTabService.GetRecentTabs();
            return Mapper.Map<IEnumerable<TabViewModel>>(tabs);
        }
    }
}
