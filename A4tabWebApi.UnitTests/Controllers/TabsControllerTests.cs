using System.Linq;
using A4tabWebApi.Controllers;
using Should;
using NUnit.Framework;

namespace A4tabWebApi.UnitTests.Controllers
{
    [TestFixture]
    public class TabsControllerTests
    {
        public class Get
        {
            [Test]
            public void Should_Return_List_Of_Tabs()
            {
                // Arrange
                var controller = new TabsController();

                // Act
                var result = controller.Get();
                
                // Assert
                result.ShouldNotBeEmpty();
                result.Count().ShouldEqual(2);
                result.ToList()[0].ShouldEqual(1);
            }
        }
    }
}
