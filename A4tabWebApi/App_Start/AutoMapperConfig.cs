using A4tabWebApi.Mappers;
using AutoMapper;

namespace A4tabWebApi
{
    public class AutoMapperConfig
    {
        public static void Configure()
        {
            Mapper.Initialize(x => x.AddProfile<DomainToViewModelProfile>());

            Mapper.AssertConfigurationIsValid("DomainToViewModelProfile");
        }
    }
}