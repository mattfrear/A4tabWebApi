using System.Collections.Generic;
using Domain;
using WebViewModels;

namespace ApplicationServices.Contracts
{
    public interface ITabApplicationService
    {
        IEnumerable<TabViewModel> GetRecentTabs();
    }
}