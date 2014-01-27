using System.Web.Http;
using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using Domain;
using Framework.Contracts;
using WebViewModels;

namespace A4tabWebApi.Installers
{
    public class ControllersInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            container.Register(Classes.FromThisAssembly().BasedOn<ApiController>().LifestyleTransient());
            container.Register(Classes.FromThisAssembly().BasedOn<IParameterValidator<TabQuery>>().LifestyleTransient());
        }
    }
}