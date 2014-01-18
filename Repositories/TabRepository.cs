using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq.Expressions;
using Dapper;
using Domain;
using Repositories.Contracts;

namespace Repositories
{
    public class TabRepository : IRepository<Tab>
    {
        private readonly SqlConnection connection;

        public TabRepository(string connectionString)
        {
            connection = new SqlConnection(connectionString);
        }

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

        public IEnumerable<Tab> SearchFor(Expression<Func<Tab, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Tab> GetAll()
        {
            var tabs = connection.Query<Tab>("select Id from Tab");
            return tabs;
        }
    }
}
