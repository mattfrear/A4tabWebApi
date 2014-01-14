using System;
using System.Linq;
using System.Linq.Expressions;

namespace Repositories.Contracts
{
    public interface IRepository<T>
    {
        T GetById(int id);
        void Insert(T entity);
        void Delete(T entity);
        void Update(T entity); 
        IQueryable<T> SearchFor(Expression<Func<T, bool>> predicate);
        IQueryable<T> GetAll();
    }
}