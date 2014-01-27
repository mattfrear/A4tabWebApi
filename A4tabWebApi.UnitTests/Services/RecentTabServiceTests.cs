using Domain;
using Moq;
using NUnit.Framework;
using Repositories.Contracts;
using Services;

namespace UnitTests.Services
{
    [TestFixture]
    public class RecentTabServiceTests
    {
        public class GetRecentTabs : RecentTabServiceTests
        {
            [Test]
            public void Should_Call_Repository()
            {
                // Arrange
                var tabRepository = new Mock<IRepository<Tab>>();
                var service = new RecentTabService(tabRepository.Object);
                tabRepository.Setup(x => x.GetAll(It.Is<TabQuery>(y => y.Sort == "-Tab.CreatedOn")));

                // Act
                service.GetRecentTabs();

                // Assert
                tabRepository.VerifyAll();
            }
        }
    }
}
