using AutoMapper;
using api.Models;

namespace api.ViewModels
{
    public class PeakVm
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public class PeakVmProfile : Profile
        {
            public PeakVmProfile()
            {
                CreateMap<Peak, PeakVm>();
            }
        }
    }
}
