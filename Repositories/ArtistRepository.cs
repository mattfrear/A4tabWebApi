using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Net.Sockets;
using Dapper;
using Domain;
using Repositories.Contracts;

namespace Repositories
{
    public class ArtistRepository : IRepository<Artist>
    {
        private readonly SqlConnection connection;

        public ArtistRepository(string connectionString)
        {
            connection = new SqlConnection(connectionString);
        }

        public Artist GetById(int id, TabQueryOption tabQueryOption)
        {
            throw new NotImplementedException();
        }

        public void Insert(Artist artist)
        {
            const string sql = @"insert Artist (Name) values (@Name) select cast(scope_identity() as int)";

            connection.Open();
            artist.Id = connection.Query<int>(sql, artist).First();
            connection.Close();
        }

        public void Delete(Artist entity)
        {
            throw new NotImplementedException();
        }

        public void Update(Artist entity)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Artist> SearchFor(string artistName)
        {
            var query = "SELECT * FROM Artist WHERE Name = @Name";
            connection.Open();
            var artists = connection.Query<Artist>(query, new { Name = artistName });
            connection.Close();
            return artists;
        }

        public IEnumerable<Artist> GetAll(TabQueryOption tabQueryOption)
        {
            throw new NotImplementedException();
        }
    }
}
