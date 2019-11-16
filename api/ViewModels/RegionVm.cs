using AutoMapper;
using api.Models;

namespace api.ViewModels
{
    public class RegionVm
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public class RegionVmProfile : Profile
        {
            public RegionVmProfile()
            {
                CreateMap<Region, RegionVm>();
            }
        }
    }
}
