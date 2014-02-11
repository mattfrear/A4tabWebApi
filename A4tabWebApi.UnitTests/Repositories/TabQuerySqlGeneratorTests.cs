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
    public class TabQuerySqlGeneratorTests
    {
        private ISqlGenerator<TabQueryOption> sqlGenerator;
        private Mock<IParameterValidator<TabQueryOption>> validator;

        [SetUp]
        public void Setup()
        {
            validator = new Mock<IParameterValidator<TabQueryOption>>();
            sqlGenerator = new TabQuerySqlGenerator(validator.Object);
        }

        public class GenerateGetAll : TabQuerySqlGeneratorTests
        {
            [Test]
            public void Should_Generate_Query_From_Default()
            {
                // Arrange
                var tabQuery = new TabQueryOption();

                // Act
                var sql = sqlGenerator.GenerateGetAll(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by Tab.Id ASC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_Limit()
            {
                // Arrange
                var tabQuery = new TabQueryOption { Limit = 20 };

                // Act
                var sql = sqlGenerator.GenerateGetAll(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by Tab.Id ASC OFFSET 0 ROWS FETCH NEXT 20 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_Offset()
            {
                // Arrange
                var tabQuery = new TabQueryOption { Offset = 20 };

                // Act
                var sql = sqlGenerator.GenerateGetAll(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by Tab.Id ASC OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_Fields()
            {
                // Arrange
                var tabQuery = new TabQueryOption {Fields = "Tab.Id, Artist.Name" };

                // Act
                var sql = sqlGenerator.GenerateGetAll(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT Tab.Id, Artist.Name FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by Tab.Id ASC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_SortOrder()
            {
                // Arrange
                var tabQuery = new TabQueryOption { Sort = "CreatedOn"};

                // Act
                var sql = sqlGenerator.GenerateGetAll(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by CreatedOn ASC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY");
            }

            [Test]
            public void Should_Generate_Query_With_Desc_SortOrder()
            {
                // Arrange
                var tabQuery = new TabQueryOption { Sort = "-CreatedOn" };

                // Act
                var sql = sqlGenerator.GenerateGetAll(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by CreatedOn DESC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY");
            }
        }

        public class GenerateGet : TabQuerySqlGeneratorTests
        {
            [Test]
            public void Should_Generate_Query_From_Default()
            {
                // Arrange
                var tabQuery = new TabQueryOption();

                // Act
                var sql = sqlGenerator.GenerateGet(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT * FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id where Tab.Id = @id");
            }

            [Test]
            public void Should_Generate_Query_With_Fields()
            {
                // Arrange
                var tabQuery = new TabQueryOption { Fields = "Tab.Id, Tab.Name" };

                // Act
                var sql = sqlGenerator.GenerateGet(tabQuery);

                // Assert
                sql.ShouldEqual("SELECT Tab.Id, Tab.Name FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id where Tab.Id = @id");
            }
        }

        public class GenerateInsert : TabQuerySqlGeneratorTests
        {
            public void Should_Generate_Insert()
            {
                // Act
                var result = sqlGenerator.GenerateInsert();

                // Assert
                result.ShouldEqual(@"insert Tab (Author, ArtistId, Name, Content, CreatedOn, ModifiedOn) values (@Author, @ArtistId, @Name, @Content, @CreatedOn, @ModifiedOn) select cast(scope_identity() as int)");
            }
        }
    }
}
