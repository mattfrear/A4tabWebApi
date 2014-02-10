using System;
using Domain;
using Framework.Contracts;
using Repositories.Contracts;

namespace Repositories
{
    public class TabQuerySqlGenerator : ISqlGenerator<TabQueryOption>
    {
        private readonly IParameterValidator<TabQueryOption> tabQueryValidator;

        public TabQuerySqlGenerator(IParameterValidator<TabQueryOption> tabQueryValidator)
        {
            this.tabQueryValidator = tabQueryValidator;
        }

        public string GenerateGetAll(TabQueryOption tabQueryOption)
        {
            tabQueryValidator.Validate(tabQueryOption);
            if (tabQueryValidator.HasErrors())
            {
                throw new ArgumentException(tabQueryValidator.ToString());
            }

            var sortOrder = "ASC";

            if (tabQueryOption.Sort.StartsWith("-"))
            {
                tabQueryOption.Sort = tabQueryOption.Sort.Substring(1);
                sortOrder = "DESC";
            }

            var sql = string.Format(
                    "SELECT {0} FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by {1} {2} OFFSET {3} ROWS FETCH NEXT {4} ROWS ONLY",
                    tabQueryOption.Fields, tabQueryOption.Sort, sortOrder, tabQueryOption.Offset, tabQueryOption.Limit);
            return sql;
        }

        public string GenerateInsert()
        {
            return @"insert Tab (Author, ArtistId, Name, Content, CreatedOn, ModifiedOn) values (@Author, @ArtistId, @Name, @Content, @CreatedOn, @ModifiedOn) select cast(scope_identity() as int)";
        }

        public string GenerateGet(TabQueryOption tabQueryOption)
        {
            tabQueryValidator.Validate(tabQueryOption);
            if (tabQueryValidator.HasErrors())
            {
                throw new ArgumentException(tabQueryValidator.ToString());
            }

            return string.Format("SELECT {0} FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id where Tab.Id = @id", tabQueryOption.Fields);
        }
    }
}
