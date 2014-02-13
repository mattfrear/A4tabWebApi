using Castle.MicroKernel.Registration;
using Castle.Windsor;
using Castle.Windsor.Installer;

namespace Importer
{
    class Program
    {
        static void Main(string[] args)
        {
            var container = new WindsorContainer().Install(FromAssembly.InDirectory(new AssemblyFilter(".", "A4tab.*.dll")));
            container.Register(Component.For<IImportService>().ImplementedBy<ImportService>());
            var importService = container.Resolve<IImportService>();
            importService.Import();
        }
    }
}
