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
        private readonly ISqlGenerator<QueryOption> sqlGenerator;
        private readonly SqlConnection connection;

        public TabRepository(string connectionString, ISqlGenerator<QueryOption> sqlGenerator)
        {
            this.sqlGenerator = sqlGenerator;
            connection = new SqlConnection(connectionString);
        }

        public Tab GetById(int id)
        {
            const string sql = "select * from Tab where Id = @id";

            connection.Open();
            var tab = connection.Query<Tab>(sql, new { id });
            connection.Close();

            return tab.SingleOrDefault();
        }

        public void Insert(Tab tab)
        {
            const string sql = @"insert Tab (Author, ArtistId, Name, Content, CreatedOn, ModifiedOn) values (@Author, @ArtistId, @Name, @Content, @CreatedOn, @ModifiedOn) select cast(scope_identity() as int)";

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

        public IEnumerable<Tab> GetAll(QueryOption queryOption)
        {
            var sql = sqlGenerator.GenerateGetAll(queryOption);

            connection.Open();
            var tabs = connection.Query<Tab, Artist, Tab>(sql, (tab, artist) => { tab.Artist = artist; return tab; });
            connection.Close();

            return tabs;
        }
    }
}
