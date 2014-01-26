using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;

namespace Repositories.Installers
{
    public class ServicesInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            container.Register(Classes.FromThisAssembly()
                .Where(type => !type.Namespace.Contains("Contracts") && type.Name.EndsWith("Service"))
                .WithService.FirstInterface()
                .LifestyleTransient());
        }
    }
}