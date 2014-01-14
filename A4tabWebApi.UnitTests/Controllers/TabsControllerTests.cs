using System.Collections.Generic;
using System.Linq;
using A4tabWebApi.Controllers;
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
        }

        public class Get : TabsControllerTests
        {
            [Test]
            public void Should_Call_Repository_And_Return_List_Of_Tabs()
            {
                // Arrange
                var tabs = new List<Tab> { new Tab { Id = 1 }}.AsQueryable();
                tabsRepository.Setup(x => x.GetAll()).Returns(tabs);

                // Act
                var result = controller.Get();
                
                // Assert
                result.ShouldNotBeEmpty();
                result.Count().ShouldEqual(1);
                result.ToList()[0].ShouldEqual(1);
                
                tabsRepository.VerifyAll();
            }
        }
    }
}
