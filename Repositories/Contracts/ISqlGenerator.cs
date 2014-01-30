using Domain;

namespace Repositories.Contracts
{
    public interface ISqlGenerator<in TEntity>
    {
        string GenerateGetAll(QueryOption queryOption);
        string GenerateInsert();
    }
}