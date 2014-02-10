using Domain;

namespace Repositories.Contracts
{
    public interface ISqlGenerator<in TEntity>
    {
        string GenerateGetAll(TabQueryOption tabQueryOption);
        string GenerateInsert();
        string GenerateGet(TabQueryOption tabQueryOption);
    }
}