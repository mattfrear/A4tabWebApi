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
        
        public TabsResponseViewModel GetAll(TabQueryOption tabQueryOption)
        {
            var tabs = tabService.GetAll(tabQueryOption);
            var count = tabService.GetCount();

            return new TabsResponseViewModel { Tabs = Mapper.Map<IEnumerable<TabViewModel>>(tabs), TotalCount = count };
        }

        public void Insert(Tab value)
        {
            tabService.Insert(value);
        }

        public TabViewModel GetById(int tabId, TabQueryOption tabQueryOption)
        {
            var tab = tabService.GetById(tabId, tabQueryOption);
            return Mapper.Map<TabViewModel>(tab);
        }

        public IEnumerable<TabViewModel> GetRecentTabs()
        {
            var tabs = tabService.GetRecentTabs();
            return Mapper.Map<IEnumerable<TabViewModel>>(tabs);
        }
    }
}
