using Domain;

namespace Repositories.Contracts
{
    public interface ISqlGenerator
    {
        string GenerateSql(TabQuery tabQuery);
    }
}