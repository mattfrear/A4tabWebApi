using System;
using System.Collections.Generic;
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
        IEnumerable<T> SearchFor(Expression<Func<T, bool>> predicate);
        IEnumerable<T> GetAll(int offset = 0, int limit = 10, string sort = "Id");
    }
}