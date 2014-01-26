//using System.Collections.Generic;
//using System.Linq;
//using System.Web.Http.Results;
//using A4tabWebApi.Controllers;
//using A4tabWebApi.Mappers;
//using A4tabWebApi.ViewModels;
//using AutoMapper;
//using Domain;
//using Moq;
//using Repositories.Contracts;
//using Should;
//using NUnit.Framework;
//
//namespace A4tabWebApi.UnitTests.Controllers
//{
//    [TestFixture]
//    public class TabsControllerTests
//    {
//        private Mock<IRepository<Tab>> tabsRepository;
//        private TabsController controller;
//
//        [SetUp]
//        public void Setup()
//        {
//            tabsRepository = new Mock<IRepository<Tab>>();
//            controller = new TabsController(tabsRepository.Object);
//
//            Mapper.Initialize(x => x.AddProfile<DomainToViewModelProfile>());
//        }
//
//        public class Get : TabsControllerTests
//        {
//            [Test]
//            public void Should_Return_BadRequest_When_Invalid_Offset()
//            {
//                // Act
//                var result = controller.Get(offset: -1);
//
//                // Assert
//                result.ShouldBeType<BadRequestErrorMessageResult>();
//
//                var message = ((BadRequestErrorMessageResult) result).Message;
//                message.ShouldEqual("invalid parameter offset - must be greater than or equal to 0. ");
//            }
//
//            [Test]
//            public void Should_Return_BadRequest_When_Invalid_Limit()
//            {
//                // Act
//                var result = controller.Get(limit: -1);
//
//                // Assert
//                result.ShouldBeType<BadRequestErrorMessageResult>();
//
//                var message = ((BadRequestErrorMessageResult)result).Message;
//                message.ShouldEqual("invalid parameter limit - must be greater than 0 and less than or equal to 100. ");
//            }
//
//            [Test]
//            public void Should_Return_BadRequest_When_Invalid_Sort()
//            {
//                // Act
//                var result = controller.Get(sort: "Blah");
//
//                // Assert
//                result.ShouldBeType<BadRequestErrorMessageResult>();
//
//                var message = ((BadRequestErrorMessageResult)result).Message;
//                message.ShouldEqual("invalid parameter sort - must be Tab.Id or Tab.Name or Tab.CreatedOn or Tab.ModifiedOn or Artist.Name. ");
//            }
//
//            [Test]
//            public void Should_Call_Repository_And_Return_List_Of_Tabs_With_Artist()
//            {
//                // Arrange
//                var tab = new Tab { Id = 1, Artist = new Artist { Name = "Bob" } };
//                var tabs = new List<Tab> { tab }.AsQueryable();
//                tabsRepository.Setup(x => x.GetAll(0, 10, "Tab.Id")).Returns(tabs);
//
//                // Act
//                var result = controller.Get();
//                
//                // Assert
//                tabsRepository.VerifyAll();
//
//                result.ShouldBeType<OkNegotiatedContentResult<IEnumerable<TabViewModel>>>();
//
//                var content = ((OkNegotiatedContentResult<IEnumerable<TabViewModel>>)result).Content.ToList();
//                content.ShouldNotBeEmpty();
//                content.Count().ShouldEqual(1);
//                content[0].Id.ShouldEqual(1);
//                content[0].ArtistName.ShouldEqual("Bob");
//            }
//        }
//    }
//}
