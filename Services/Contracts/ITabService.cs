using System.Collections.Generic;
using Domain;

namespace Services.Contracts
{
    public interface ITabService
    {
        IEnumerable<Tab> GetAll(TabQueryOption tabQueryOption);
        IEnumerable<Tab> GetRecentTabs();
        void Insert(Tab value);
        Tab GetById(int tabId, TabQueryOption tabQueryOption);
    }
}