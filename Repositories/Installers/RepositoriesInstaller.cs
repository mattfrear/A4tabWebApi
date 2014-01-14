using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using Repositories.Contracts;

namespace Repositories.Installers
{
    public class RepositoriesInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            container.Register(Classes.FromThisAssembly()
                .BasedOn<IRepository<TabRepository>>()
                .WithService.DefaultInterfaces()
                .LifestyleTransient());
        }
    }
}