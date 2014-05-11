using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using Elmah.Contrib.WebApi;

namespace A4tabWebApi
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            GlobalConfiguration.Configuration.Filters.Add(new ElmahHandleErrorApiAttribute());
        }
    }
}
