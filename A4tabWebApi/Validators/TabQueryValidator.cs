using Framework;
using Framework.Contracts;
using WebViewModels;

namespace A4tabWebApi.Validators
{
    public class TabQueryValidator : ParameterValidator, IParameterValidator<TabQuery>
    {
        public void Validate(TabQuery tabQuery)
        {
            Validate(tabQuery.Offset >= 0, "offset", "invalid parameter offset - must be greater than or equal to 0. ");
            
            Validate(tabQuery.Limit > 0 && tabQuery.Limit <= 100, "limit", "invalid parameter limit - must be greater than 0 and less than or equal to 100. ");
            
            Validate(tabQuery.Sort == "Tab.Id" || tabQuery.Sort == "Tab.Name" || tabQuery.Sort == "Tab.CreatedOn" || tabQuery.Sort == "Tab.ModifiedOn" || tabQuery.Sort == "Artist.Name",
                "sort", "invalid parameter sort - must be Tab.Id or Tab.Name or Tab.CreatedOn or Tab.ModifiedOn or Artist.Name. ");
        }
    }
}
