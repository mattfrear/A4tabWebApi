﻿using Castle.MicroKernel.Registration;
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
                .Where(type => !type.Namespace.Contains("Contracts") && type.Name.EndsWith("Repository"))
                .WithService.FirstInterface()
                .LifestyleTransient());
        }
    }
}