using AutoMapper;
using Domain;
using WebViewModels;

namespace ApplicationServices.Mappers
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