using Domain;

namespace Repositories.Contracts
{
    public interface ISqlGenerator<in T>
    {
        string GenerateSql(T query);
    }
}