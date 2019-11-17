using AutoMapper;
using api.Models;

namespace api.ViewModels
{
    public class PeakVm
    {
        public int Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string Location { get; set; }

        public RegionVm Region { get; set; }

        public GradeVm Grade { get; set; }

        public class PeakVmProfile : Profile
        {
            public PeakVmProfile()
            {
                CreateMap<Peak, PeakVm>();
            }
        }
    }
}
