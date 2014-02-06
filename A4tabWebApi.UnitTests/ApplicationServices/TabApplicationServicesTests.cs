using System.Collections.Generic;
using System.Linq;
using ApplicationServices;
using ApplicationServices.Mappers;
using AutoMapper;
using Domain;
using Moq;
using NUnit.Framework;
using Services.Contracts;
using Should;

namespace UnitTests.ApplicationServices
{
    [TestFixture]
    public class TabApplicationServicesTests
    {
        private Mock<ITabService> tabService;

        private TabApplicationService applicationService;

        [SetUp]
        public void Setup()
        {
            tabService = new Mock<ITabService>();
            applicationService = new TabApplicationService(tabService.Object);

            Mapper.Initialize(x => x.AddProfile<DomainToViewModelProfile>());
        }
        
        public class Get : TabApplicationServicesTests
        {
            [Test]
            public void Should_Call_Service_And_Map_Result()
            {
                // Arrange
                var tabQuery = new QueryOption();
                var tabs = new List<Tab> { new Tab { Artist = new Artist { Name = "Bob Marley" }, Name = "Easy Skankin'" } };
                tabService.Setup(x => x.GetAll(tabQuery)).Returns(tabs);

                // Act
                var result = applicationService.GetAll(tabQuery);

                // Assert
                var tabViewModels = result.ToList();
                tabViewModels.First().ArtistName.ShouldEqual("Bob Marley");
                tabViewModels.First().Name.ShouldEqual("Easy Skankin'");
            }
        }

        public class GetRecentTabs : TabApplicationServicesTests
        {
            [Test]
            public void Should_Call_Service_And_Map_Result()
            {
                // Arrange
                var tabs = new List<Tab> { new Tab { Artist = new Artist { Name = "Bob Marley" }, Name = "Easy Skankin'" } };
                tabService.Setup(x => x.GetRecentTabs()).Returns(tabs);

                // Act
                var result = applicationService.GetRecentTabs();

                // Assert
                var tabViewModels = result.ToList();
                tabViewModels.First().ArtistName.ShouldEqual("Bob Marley");
                tabViewModels.First().Name.ShouldEqual("Easy Skankin'");
            }
        }

        public class Insert : TabApplicationServicesTests
        {
            [Test]
            public void Should_Call_Service()
            {
                // Arrange
                var tab = new Tab();
                tabService.Setup(x => x.Insert(tab));

                // Act
                applicationService.Insert(tab);

                // Assert
                tabService.VerifyAll();
            }
        }

    }
}
