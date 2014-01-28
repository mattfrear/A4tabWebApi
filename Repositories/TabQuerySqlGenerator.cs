using System;
using Domain;
using Framework.Contracts;
using Repositories.Contracts;

namespace Repositories
{
    public class TabQuerySqlGenerator : ISqlGenerator<TabQuery>
    {
        private readonly IParameterValidator<TabQuery> tabQueryValidator;

        public TabQuerySqlGenerator(IParameterValidator<TabQuery> tabQueryValidator)
        {
            this.tabQueryValidator = tabQueryValidator;
        }

        public string GenerateSql(TabQuery tabQuery)
        {
            tabQueryValidator.Validate(tabQuery);
            if (tabQueryValidator.HasErrors())
            {
                throw new ArgumentException(tabQueryValidator.ToString());
            }

            var sortOrder = "ASC";

            if (tabQuery.Sort.StartsWith("-"))
            {
                tabQuery.Sort = tabQuery.Sort.Substring(1);
                sortOrder = "DESC";
            }

            var sql =
                string.Format(
                    "SELECT {0} FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by {1} {2} OFFSET {3} ROWS FETCH NEXT {4} ROWS ONLY",
                    tabQuery.Fields, tabQuery.Sort, sortOrder, tabQuery.Offset, tabQuery.Limit);
            return sql;
        }
    }
}
