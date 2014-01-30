using System.Collections.Generic;
using Domain;

namespace Repositories.Contracts
{
    public interface IRepository<T>
    {
        T GetById(int id);
        void Insert(T entity);
        void Delete(T entity);
        void Update(T entity); 
        IEnumerable<T> SearchFor(string name);
        IEnumerable<T> GetAll(QueryOption queryOption);
    }
}