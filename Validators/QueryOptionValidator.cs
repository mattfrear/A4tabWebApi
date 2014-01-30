using System.Linq;
using Domain;
using Framework.Contracts;
using Framework.Validators;

namespace Validators
{
    public class QueryOptionValidator : ParameterValidator, IParameterValidator<QueryOption>
    {
        public void Validate(QueryOption queryOption)
        {
            Validate(queryOption.Offset >= 0, "offset", "invalid parameter offset - must be greater than or equal to 0. ");
            
            Validate(queryOption.Limit > 0 && queryOption.Limit <= 100, "Limit", "invalid parameter limit - must be greater than 0 and less than or equal to 100. ");
            
            var sortWhiteList = new[]
            {
                "Tab.Id", "Tab.Name", "Tab.CreatedOn", "Tab.ModifiedOn", "Artist.Name", "Tab.CreatedOn",
                "-Tab.Id", "-Tab.Name", "-Tab.CreatedOn", "-Tab.ModifiedOn", "-Artist.Name", "-Tab.CreatedOn"
            };

            Validate(sortWhiteList.Contains(queryOption.Sort), "Sort", "invalid parameter sort:" + queryOption.Sort +". Must be one of " + string.Join(" or ", sortWhiteList));

            if (queryOption.Fields == "*")
            {
                return;
            }
            
            var fieldsWhiteList = new[]
            {
                "Tab.Id", "Tab.Author", "Tab.ArtistId", "Tab.Name", "Tab.Content", "Tab.CreatedOn", "Tab.ModifiedOn",
                "Artist.Id", "Artist.Name"
            };

            var mandatoryFields = new[] { "Tab.Id", "Artist.Id" };

            var allFields = queryOption.Fields.Replace(" ", "").Split(',');
            
            foreach (var field in allFields)
            {
                Validate(fieldsWhiteList.Contains(field.Trim()), "Fields", "invalid parameter fields - bad value:" + field + ". Must be either * or one or more of " + string.Join(" or ", fieldsWhiteList) + " separated by a comma.");
            }

            foreach (var mandatoryField in mandatoryFields)
            {
                Validate(allFields.Contains(mandatoryField), "Fields", "invalid parameter fields - must be include Tab.Id and Artist.Id.");
            }
        }
    }
}
