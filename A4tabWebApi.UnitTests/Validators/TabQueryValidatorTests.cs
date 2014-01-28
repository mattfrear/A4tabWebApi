using Domain;
using NUnit.Framework;
using Should;
using Validators;

namespace UnitTests.Validators
{
    [TestFixture]
    public class TabQueryValidatorTests
    {
        private TabQueryValidator validator;

        [SetUp]
        public void Setup()
        {
            validator = new TabQueryValidator();
        }

        public class Validate : TabQueryValidatorTests
        {
            [Test]
            public void Should_Return_No_Errors_For_Default()
            {
                // Arrange
                var tabQuery = new TabQuery();

                // Act
                validator.Validate(tabQuery);

                // Assert
                validator.HasErrors().ShouldBeFalse();
            }

            [Test]
            public void Should_Return_No_Errors_For_Sort()
            {
                // Arrange
                var tabQuery = new TabQuery { Sort = "Tab.Id" };

                // Act
                validator.Validate(tabQuery);

                // Assert
                validator.HasErrors().ShouldBeFalse();
            }

            [Test]
            public void Should_Return_No_Errors_For_Fields()
            {
                // Arrange
                var tabQuery = new TabQuery { Fields = "Tab.Id, Artist.Name, Tab.Name" };

                // Act
                validator.Validate(tabQuery);

                // Assert
                validator.HasErrors().ShouldBeFalse();
            }

            [Test]
            public void Should_Error_When_Offset_Less_Than_Zero()
            {
                // Arrange
                var tabQuery = new TabQuery { Offset = -1 };

                // Act
                validator.Validate(tabQuery);

                // Assert
                validator.HasErrors().ShouldBeTrue();
                validator.ToString().ShouldEqual("invalid parameter offset - must be greater than or equal to 0. ");
            }

            [Test]
            public void Should_Error_When_Limit_Less_Than_Zero()
            {
                // Arrange
                var tabQuery = new TabQuery { Limit = -1 };

                // Act
                validator.Validate(tabQuery);

                // Assert
                validator.HasErrors().ShouldBeTrue();
                validator.ToString().ShouldEqual("invalid parameter limit - must be greater than 0 and less than or equal to 100. ");
            }

            [Test]
            public void Should_Error_When_Limit_Greater_Than_100()
            {
                // Arrange
                var tabQuery = new TabQuery { Limit = 101 };

                // Act
                validator.Validate(tabQuery);

                // Assert
                validator.HasErrors().ShouldBeTrue();
                validator.ToString().ShouldEqual("invalid parameter limit - must be greater than 0 and less than or equal to 100. ");
            }

            [Test]
            public void Should_Error_When_Sort_Invalid()
            {
                // Arrange
                var tabQuery = new TabQuery { Sort = "Blah" };

                // Act
                validator.Validate(tabQuery);

                // Assert
                validator.HasErrors().ShouldBeTrue();
                validator.ToString().ShouldEqual("invalid parameter sort:Blah. Must be one of Tab.Id or Tab.Name or Tab.CreatedOn or Tab.ModifiedOn or Artist.Name or Tab.CreatedOn or -Tab.Id or -Tab.Name or -Tab.CreatedOn or -Tab.ModifiedOn or -Artist.Name or -Tab.CreatedOn");
            }

            [Test]
            public void Should_Error_When_Fields_Invalid()
            {
                // Arrange
                var tabQuery = new TabQuery { Fields = "Blah" };

                // Act
                validator.Validate(tabQuery);

                // Assert
                validator.HasErrors().ShouldBeTrue();
                validator.ToString().ShouldEqual("invalid parameter fields - bad value:Blah. Must be either * or one or more of Tab.Id or Tab.Author or Tab.ArtistId or Tab.Name or Tab.Content or Tab.CreatedOn or Tab.ModifiedOn or Artist.Id or Artist.Name separated by a comma.");
            }

            [Test]
            public void Should_Error_When_Fields_Missing_ArtistId()
            {
                // Arrange
                var tabQuery = new TabQuery { Fields = "Tab.Id, Tab.Name, Artist.Name" };

                // Act
                validator.Validate(tabQuery);

                // Assert
                validator.HasErrors().ShouldBeTrue();
                validator.ToString().ShouldEqual("invalid parameter fields - must be include Tab.Id and Artist.Id.");
            }
        }
    }
}
