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
        private readonly ITabService tabService;

        public TabApplicationService(ITabService tabService)
        {
            this.tabService = tabService;
        }
        
        public IEnumerable<TabViewModel> Get(TabQuery tabQuery)
        {
            var tabs = tabService.Get(tabQuery);
            return Mapper.Map<IEnumerable<TabViewModel>>(tabs);
        }

        public IEnumerable<TabViewModel> GetRecentTabs()
        {
            var tabs = tabService.GetRecentTabs();
            return Mapper.Map<IEnumerable<TabViewModel>>(tabs);
        }
    }
}
