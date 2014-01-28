using Domain;
using Framework.Contracts;
using Moq;
using NUnit.Framework;
using Repositories;
using Repositories.Contracts;
using Should;

namespace UnitTests.Repositories
{
    [TestFixture]
    public class SqlGeneratorTests
    {
        private ISqlGenerator<TabQuery> sqlGenerator;
        private Mock<IParameterValidator<TabQuery>> validator;

        [SetUp]
        public void Setup()
        {
            validator = new Mock<IParameterValidator<TabQuery>>();
            sqlGenerator = new TabQuerySqlGenerator(validator.Object);
        }

        public class GenerateSql : SqlGeneratorTests
        {
            [Test]
            public void Should_Generate_Query_From_Default()
            {
                // Arrange
                var tabQuery = new TabQuery();

                // Act
                var sql = sqlGenerator.GenerateSql(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by Tab.Id ASC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_Limit()
            {
                // Arrange
                var tabQuery = new TabQuery { Limit = 20 };

                // Act
                var sql = sqlGenerator.GenerateSql(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by Tab.Id ASC OFFSET 0 ROWS FETCH NEXT 20 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_Offset()
            {
                // Arrange
                var tabQuery = new TabQuery { Offset = 20 };

                // Act
                var sql = sqlGenerator.GenerateSql(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by Tab.Id ASC OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_Fields()
            {
                // Arrange
                var tabQuery = new TabQuery {Fields = "Tab.Id, Artist.Name" };

                // Act
                var sql = sqlGenerator.GenerateSql(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT Tab.Id, Artist.Name FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by Tab.Id ASC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_SortOrder()
            {
                // Arrange
                var tabQuery = new TabQuery { Sort = "CreatedOn"};

                // Act
                var sql = sqlGenerator.GenerateSql(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by CreatedOn ASC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_Desc_SortOrder()
            {
                // Arrange
                var tabQuery = new TabQuery { Sort = "-CreatedOn" };

                // Act
                var sql = sqlGenerator.GenerateSql(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by CreatedOn DESC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY");
            }
        }
    }
}
