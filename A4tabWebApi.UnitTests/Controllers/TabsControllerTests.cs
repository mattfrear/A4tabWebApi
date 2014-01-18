using System.Collections.Generic;
using System.Linq;
using A4tabWebApi.Controllers;
using A4tabWebApi.Mappers;
using AutoMapper;
using Domain;
using Moq;
using Repositories.Contracts;
using Should;
using NUnit.Framework;

namespace A4tabWebApi.UnitTests.Controllers
{
    [TestFixture]
    public class TabsControllerTests
    {
        private Mock<IRepository<Tab>> tabsRepository;
        private TabsController controller;

        [SetUp]
        public void Setup()
        {
            tabsRepository = new Mock<IRepository<Tab>>();
            controller = new TabsController(tabsRepository.Object);

            Mapper.Initialize(x => x.AddProfile<DomainToViewModelProfile>());
        }

        public class Get : TabsControllerTests
        {
            [Test]
            public void Should_Call_Repository_And_Return_List_Of_Tabs_With_Artist()
            {
                // Arrange
                var tab = new Tab { Id = 1, Artist = new Artist { Name = "Bob" } };
                var tabs = new List<Tab> { tab }.AsQueryable();
                tabsRepository.Setup(x => x.GetAll(0, 10, "Tab.Id")).Returns(tabs);

                // Act
                var result = controller.Get().ToList();
                
                // Assert
                tabsRepository.VerifyAll();

                result.ShouldNotBeEmpty();
                result.Count().ShouldEqual(1);
                result[0].Id.ShouldEqual(1);
                result[0].ArtistName.ShouldEqual("Bob");
            }
        }
    }
}
