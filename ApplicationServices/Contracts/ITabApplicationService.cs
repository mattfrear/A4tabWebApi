using System.Collections.Generic;
using Domain;
using WebViewModels;

namespace ApplicationServices.Contracts
{
    public interface ITabApplicationService
    {
        IEnumerable<TabViewModel> GetRecentTabs();
        IEnumerable<TabViewModel> GetAll(QueryOption queryOption);
        void Insert(Tab value);
        TabViewModel Get(int tabId);
    }
}