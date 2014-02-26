using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using Dapper;
using Domain;
using Repositories.Contracts;

namespace Repositories
{
    public class TabRepository : IRepository<Tab>
    {
        private readonly ISqlGenerator<TabQueryOption> sqlGenerator;
        private readonly SqlConnection connection;

        public TabRepository(string connectionString, ISqlGenerator<TabQueryOption> sqlGenerator)
        {
            this.sqlGenerator = sqlGenerator;
            connection = new SqlConnection(connectionString);
        }

        public Tab GetById(int id, TabQueryOption tabQueryOption)
        {
            var sql = sqlGenerator.GenerateGet(tabQueryOption);

            connection.Open();
            var tab = connection.Query<Tab, Artist, Tab>(sql, (t, artist) => { t.Artist = artist; return t; }, new { id });
            
            connection.Close();

            return tab.SingleOrDefault();
        }

        public void Insert(Tab tab)
        {
            var sql = sqlGenerator.GenerateInsert();

            connection.Open();
            tab.Id = connection.Query<int>(sql, new { tab.Author, ArtistId = tab.Artist.Id, tab.Name, tab.Content, CreatedOn = DateTime.UtcNow, ModifiedOn = DateTime.UtcNow }).First();
            connection.Close();
        }

        public void Delete(Tab entity)
        {
            throw new NotImplementedException();
        }

        public void Update(Tab entity)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Tab> SearchFor(string name)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Tab> GetAll(TabQueryOption tabQueryOption)
        {
            var sql = sqlGenerator.GenerateGetAll(tabQueryOption);

            connection.Open();
            var tabs = connection.Query<Tab, Artist, Tab>(sql, (tab, artist) => { tab.Artist = artist; return tab; });
            connection.Close();

            return tabs;
        }

        public int GetCount()
        {
            const string sql = "select count(*) from Tab";
            int count = connection.Query<int>(sql).Single();
            return count;
        }
    }
}
