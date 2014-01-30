using Domain;
using Moq;
using NUnit.Framework;
using Repositories;
using Repositories.Contracts;
using Services;
using Validators;

namespace UnitTests.Services
{
    [TestFixture]
    public class TabServiceTests
    {
        private Mock<IRepository<Tab>> tabRepository;
        private Mock<IRepository<Artist>> artistRepository;
        private TabService service;

        [SetUp]
        public void Setup()
        {
            tabRepository = new Mock<IRepository<Tab>>();
            artistRepository = new Mock<IRepository<Artist>>();
            service = new TabService(tabRepository.Object, artistRepository.Object);
        }

        public class Get : TabServiceTests
        {
            [Test]
            public void Should_Call_Repository()
            {
                // Arrange
                var tabQuery = new QueryOption();
                tabRepository.Setup(x => x.GetAll(tabQuery));

                // Act
                service.Get(tabQuery);

                // Assert
                tabRepository.VerifyAll();
            }
        }

        public class GetRecentTabs : TabServiceTests
        {
            [Test]
            public void Should_Call_Repository()
            {
                // Arrange
                tabRepository.Setup(x => x.GetAll(It.Is<QueryOption>(y => y.Sort == "-Tab.CreatedOn")));

                // Act
                service.GetRecentTabs();

                // Assert
                tabRepository.VerifyAll();
            }
        }

        public class Insert : TabServiceTests
        {
            [Test]
            public void Should_Call_ArtistRepository_When_ArtistId_Is_Zero()
            {
                var connectionString = @"Data Source=.\sqlexpress;Initial Catalog=A4tab;Integrated Security=True";
                service = new TabService(new TabRepository(connectionString, new TabQuerySqlGenerator(new QueryOptionValidator())), new ArtistRepository(connectionString));

                var tab = new Tab { Artist = new Artist { Name = "wa hey" }, Author = "Matt Frear", Content="Blah blah", Name = "Balls" };

                service.Insert(tab);
            }
        }
    }
}
