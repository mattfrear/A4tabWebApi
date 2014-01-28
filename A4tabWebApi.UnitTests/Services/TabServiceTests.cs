using Domain;
using Moq;
using NUnit.Framework;
using Repositories.Contracts;
using Services;

namespace UnitTests.Services
{
    [TestFixture]
    public class TabServiceTests
    {
        public class Get : TabServiceTests
        {
            [Test]
            public void Should_Call_Repository()
            {
                // Arrange
                var tabRepository = new Mock<IRepository<Tab>>();
                var service = new TabService(tabRepository.Object);
                var tabQuery = new TabQuery();
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
                var tabRepository = new Mock<IRepository<Tab>>();
                var service = new TabService(tabRepository.Object);
                tabRepository.Setup(x => x.GetAll(It.Is<TabQuery>(y => y.Sort == "-Tab.CreatedOn")));

                // Act
                service.GetRecentTabs();

                // Assert
                tabRepository.VerifyAll();
            }
        }
    }
}
