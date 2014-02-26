using System.Collections.Generic;
using System.Linq;
using System.Web.Http.Results;
using A4tabWebApi.Controllers;
using ApplicationServices.Contracts;
using Domain;
using Framework.Contracts;
using Moq;
using Repositories.Contracts;
using Should;
using NUnit.Framework;
using WebViewModels;

namespace A4tabWebApi.UnitTests.Controllers
{
    [TestFixture]
    public class TabsControllerTests
    {
        private Mock<ITabApplicationService> tabApplicationService;
        private Mock<IParameterValidator<TabQueryOption>> tabQueryValidator;
        private TabsController controller;

        [SetUp]
        public void Setup()
        {
            tabApplicationService = new Mock<ITabApplicationService>();
            tabQueryValidator = new Mock<IParameterValidator<TabQueryOption>>();

            controller = new TabsController(tabApplicationService.Object, tabQueryValidator.Object);

            // Mapper.Initialize(x => x.AddProfile<DomainToViewModelProfile>());
        }

        public class Recent : TabsControllerTests
        {
            [Test]
            public void Should_Call_Application_Service()
            {
                // Arrange
                tabApplicationService.Setup(x => x.GetRecentTabs()).Returns(() => null);

                // Act
                controller.Recent();

                // Assert
                tabApplicationService.VerifyAll();
            }
        }

        public class Get : TabsControllerTests
        {
            [Test]
            public void When_Validator_Returns_Errors_Should_Return_BadRequest()
            {
                // Arrange
                tabQueryValidator.Setup(x => x.HasErrors()).Returns(true);

                // Act
                var result = controller.Get(null);

                // Assert
                result.ShouldBeType<BadRequestErrorMessageResult>();
            }

            [Test]
            public void When_Validator_Has_No_Errors_Should_Call_Application_Service_And_Return_Ok()
            {
                // Arrange
                tabQueryValidator.Setup(x => x.HasErrors()).Returns(false);
                var tabs = new List<TabViewModel> { new TabViewModel { ArtistName = "Bob Marley" } };
                var tabViewModel = new TabsResponseViewModel { Tabs = tabs };
                var tabQuery = new TabQueryOption();
                tabApplicationService.Setup(x => x.GetAll(tabQuery)).Returns(tabViewModel);

                // Act
                var result = controller.Get(tabQuery);

                // Assert
                tabApplicationService.VerifyAll();

                var tabResult = result.ShouldBeType<OkNegotiatedContentResult<TabsResponseViewModel>>();
                tabResult.Content.Tabs.First().ArtistName.ShouldEqual("Bob Marley");
            }
        }

        public class Post : TabsControllerTests
        {
            [Test]
            public void Should_Call_ApplicationService()
            {
                // Arrange
                var tab = new Tab();
                tabApplicationService.Setup(x => x.Insert(tab));

                // Act
                controller.Post(tab);

                // Assert
                tabApplicationService.VerifyAll();
            }

        }
    }
}
