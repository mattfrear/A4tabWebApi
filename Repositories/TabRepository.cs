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

        public IEnumerable<Tab> GetAll(int offset = 0, int limit = 10, string sort = "Tab.Id")
        {
            connection.Open();
            var sql = string.Format("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by {0} OFFSET {1} ROWS FETCH NEXT {2} ROWS ONLY", sort, offset, limit);
            var tabs = connection.Query<Tab, Artist, Tab>(sql, (tab, artist) => { tab.Artist = artist; return tab; });
            connection.Close();

            return tabs;
        }
    }
}
