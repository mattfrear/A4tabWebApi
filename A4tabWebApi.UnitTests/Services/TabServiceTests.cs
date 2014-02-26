using System;
using Domain;
using Moq;
using NUnit.Framework;
using Repositories.Contracts;
using Services;
using Should;

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

        public class GetAll : TabServiceTests
        {
            [Test]
            public void Should_Call_Repository()
            {
                // Arrange
                var tabQuery = new TabQueryOption();
                tabRepository.Setup(x => x.GetAll(tabQuery));

                // Act
                service.GetAll(tabQuery);

                // Assert
                tabRepository.VerifyAll();
            }
        }

        public class GetCount : TabServiceTests
        {
            [Test]
            public void Should_Call_Repository()
            {
                // Arrange
                tabRepository.Setup(x => x.GetCount()).Returns(7);

                // Act
                var count = service.GetCount();

                // Assert
                count.ShouldEqual(7);
                tabRepository.VerifyAll();
            }
        }

        public class GetRecentTabs : TabServiceTests
        {
            [Test]
            public void Should_Call_Repository()
            {
                // Arrange
                tabRepository.Setup(x => x.GetAll(It.Is<TabQueryOption>(y => y.Sort == "-Tab.CreatedOn")));

                // Act
                service.GetRecentTabs();

                // Assert
                tabRepository.VerifyAll();
            }
        }

        public class Insert : TabServiceTests
        {
            [Test]
            public void Should_Throw_Argument_Exception_When_Artist_Is_Null()
            {
                // Arrange
                var tab = new Tab();

                // Act
                Assert.Throws<ArgumentException>(() => service.Insert(tab));
            }

            [Test]
            public void Should_Throw_Argument_Exception_When_Artist_Has_No_Name()
            {
                // Arrange
                var tab = new Tab { Artist = new Artist() };

                // Act
                Assert.Throws<ArgumentException>(() => service.Insert(tab));
            }

            [Test]
            public void Should_Search_For_Artist_And_Set_ArtistId_When_ArtistId_Is_Zero()
            {
                // Arrange
                var tab = new Tab { Artist = new Artist { Name = "Bob" } };
                artistRepository.Setup(x => x.SearchFor("Bob")).Returns(new[] { new Artist { Id = 123, Name = "Bob" }});

                // Art
                service.Insert(tab);

                // Assert
                artistRepository.VerifyAll();
                tab.Artist.Id.ShouldEqual(123);
            }

            [Test]
            public void Should_Insert_Artist_When_Artist_Does_Not_Exist()
            {
                // Arrange
                var artist = new Artist { Name = "Bob" };
                var tab = new Tab { Artist = artist };
                artistRepository.Setup(x => x.SearchFor("Bob")).Returns(new Artist[] { });
                artistRepository.Setup(x => x.Insert(artist));

                // Art
                service.Insert(tab);

                // Assert
                artistRepository.VerifyAll();
            }

            [Test]
            public void Should_Insert_Tab()
            {
                // Arrange
                var artist = new Artist { Id = 123, Name = "Bob" };
                var tab = new Tab { Artist = artist };
                tabRepository.Setup(x => x.Insert(tab));

                // Art
                service.Insert(tab);

                // Assert
                artistRepository.VerifyAll();
                tabRepository.VerifyAll();
            }
        }

        public class GetById : TabServiceTests
        {
            [Test]
            public void Should_Call_Repository()
            {
                // Arrange
                var tabQuery = new TabQueryOption();
                tabRepository.Setup(x => x.GetById(1, tabQuery));

                // Act
                service.GetById(1, tabQuery);

                // Assert
                tabRepository.VerifyAll();
            }
        }
    }
}
