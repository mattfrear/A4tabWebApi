using System.Web;
using System.Web.Mvc;
using Elmah.Contrib.WebApi;

namespace A4tabWebApi
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new ElmahHandleErrorApiAttribute());
        }
    }
}
