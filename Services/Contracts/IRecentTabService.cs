using System.Collections.Generic;
using Domain;

namespace Services.Contracts
{
    public interface IRecentTabService
    {
        IEnumerable<Tab> GetRecentTabs();
    }
}