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
        
        public IEnumerable<TabViewModel> GetAll(QueryOption queryOption)
        {
            var tabs = tabService.GetAll(queryOption);
            return Mapper.Map<IEnumerable<TabViewModel>>(tabs);
        }

        public void Insert(Tab value)
        {
            tabService.Insert(value);
        }

        public TabViewModel Get(int tabId)
        {
            var tab = tabService.Get(tabId);
            return Mapper.Map<TabViewModel>(tab);
        }

        public IEnumerable<TabViewModel> GetRecentTabs()
        {
            var tabs = tabService.GetRecentTabs();
            return Mapper.Map<IEnumerable<TabViewModel>>(tabs);
        }
    }
}
