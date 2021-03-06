﻿using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;

namespace A4tabWebApi.Installers
{
    public class ValidatorsInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            container.Register(Classes.FromThisAssembly()
                .Where(type => !type.Namespace.Contains("Contracts") && type.Name.EndsWith("Validator"))
                .WithService.FirstInterface()
                .LifestyleTransient());
        }
    }
}