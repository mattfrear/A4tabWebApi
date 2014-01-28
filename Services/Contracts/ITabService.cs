using System.Collections.Generic;
using Domain;

namespace Services.Contracts
{
    public interface ITabService
    {
        IEnumerable<Tab> Get(TabQuery tabQuery);
        IEnumerable<Tab> GetRecentTabs();
    }
}