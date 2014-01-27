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
        private Mock<IRecentTabService> recentTabService;

        private TabApplicationService applicationService;

        [SetUp]
        public void Setup()
        {
            recentTabService = new Mock<IRecentTabService>();
            applicationService = new TabApplicationService(recentTabService.Object);

            Mapper.Initialize(x => x.AddProfile<DomainToViewModelProfile>());
        }

        public class GetRecentTabs : TabApplicationServicesTests
        {
            [Test]
            public void Should_Call_Service_And_Map_Result()
            {
                // Arrange
                var tabs = new List<Tab> { new Tab { Artist = new Artist { Name = "Bob Marley" }, Name = "Easy Skankin'" } };
                recentTabService.Setup(x => x.GetRecentTabs()).Returns(tabs);

                // Act
                var result = applicationService.GetRecentTabs();

                // Assert
                var tabViewModels = result.ToList();
                tabViewModels.First().ArtistName.ShouldEqual("Bob Marley");
                tabViewModels.First().Name.ShouldEqual("Easy Skankin'");
            }
        }
    }
}
