using System;
using Domain;
using Framework.Contracts;
using Repositories.Contracts;

namespace Repositories
{
    public class TabQuerySqlGenerator : ISqlGenerator<QueryOption>
    {
        private readonly IParameterValidator<QueryOption> tabQueryValidator;

        public TabQuerySqlGenerator(IParameterValidator<QueryOption> tabQueryValidator)
        {
            this.tabQueryValidator = tabQueryValidator;
        }

        public string GenerateGetAll(QueryOption queryOption)
        {
            tabQueryValidator.Validate(queryOption);
            if (tabQueryValidator.HasErrors())
            {
                throw new ArgumentException(tabQueryValidator.ToString());
            }

            var sortOrder = "ASC";

            if (queryOption.Sort.StartsWith("-"))
            {
                queryOption.Sort = queryOption.Sort.Substring(1);
                sortOrder = "DESC";
            }

            var sql = string.Format(
                    "SELECT {0} FROM Tab INNER JOIN Artist ON Tab.ArtistId = Artist.Id ORDER by {1} {2} OFFSET {3} ROWS FETCH NEXT {4} ROWS ONLY",
                    queryOption.Fields, queryOption.Sort, sortOrder, queryOption.Offset, queryOption.Limit);
            return sql;
        }

        public string GenerateInsert()
        {
            return @"insert Tab (Author, ArtistId, Name, Content, CreatedOn, ModifiedOn) values (@Author, @Artist.Id, @Name, @Content, @CreatedOn, @ModifiedOn) select cast(scope_identity() as int)";
        }
    }
}
