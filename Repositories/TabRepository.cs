using System;
using System.Linq;
using System.Linq.Expressions;
using Domain;
using Repositories.Contracts;

namespace Repositories
{
    public class TabRepository : IRepository<Tab>
    {
        public Tab GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Insert(Tab entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(Tab entity)
        {
            throw new NotImplementedException();
        }

        public void Update(Tab entity)
        {
            throw new NotImplementedException();
        }

        public IQueryable<Tab> SearchFor(Expression<Func<Tab, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public IQueryable<Tab> GetAll()
        {
            throw new NotImplementedException();
        }
    }
}
