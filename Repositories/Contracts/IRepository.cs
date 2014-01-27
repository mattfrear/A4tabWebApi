using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using Domain;

namespace Repositories.Contracts
{
    public interface IRepository<T>
    {
        T GetById(int id);
        void Insert(T entity);
        void Delete(T entity);
        void Update(T entity); 
        IEnumerable<T> SearchFor(Expression<Func<T, bool>> predicate);
        IEnumerable<T> GetAll(TabQuery tabQuery);
    }
}