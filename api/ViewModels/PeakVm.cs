using AutoMapper;
using api.Models;

namespace api.ViewModels
{
    public class PeakVm
    {
        public int Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string Area { get; set; }

        public int Elevation { get; set; }

        public decimal Latitude  { get; set; }

        public decimal Longitude  { get; set; }

        public RegionVm Region { get; set; }

        public GradeVm Grade { get; set; }

        public string Duration { get; set; }

        public string Access { get; set; }

        public string Description { get; set; }

        public class PeakVmProfile : Profile
        {
            public PeakVmProfile()
            {
                CreateMap<Peak, PeakVm>();
            }
        }
    }
}
