using A4tabWebApi.ViewModels;
using AutoMapper;
using Domain;

namespace A4tabWebApi.Mappers
{
    public class DomainToViewModelProfile : Profile
    {
        public override string ProfileName
        {
            get { return "DomainToViewModelProfile"; }
        }

        protected override void Configure()
        {
            Mapper.CreateMap<Tab, TabViewModel>();
        }
    }
}