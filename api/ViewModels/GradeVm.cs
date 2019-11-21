using AutoMapper;
using api.Models;

namespace api.ViewModels
{
    public class GradeVm
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public class GradeVmProfile : Profile
        {
            public GradeVmProfile()
            {
                CreateMap<Grade, GradeVm>();
            }
        }
    }
}
