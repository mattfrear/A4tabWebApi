using System.Collections.Generic;
using Domain;
using WebViewModels;

namespace ApplicationServices.Contracts
{
    public interface ITabApplicationService
    {
        IEnumerable<TabViewModel> GetRecentTabs();
        TabsResponseViewModel GetAll(TabQueryOption tabQueryOption);
        void Insert(Tab value);
        TabViewModel GetById(int tabId, TabQueryOption tabQueryOption);
    }
}