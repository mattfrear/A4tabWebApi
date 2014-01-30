using System.Collections.Generic;
using Domain;

namespace Services.Contracts
{
    public interface ITabService
    {
        IEnumerable<Tab> Get(QueryOption queryOption);
        IEnumerable<Tab> GetRecentTabs();
        void Insert(Tab value);
    }
}