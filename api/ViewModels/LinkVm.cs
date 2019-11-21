using AutoMapper;
using api.Models;

namespace api.ViewModels
{
    public class LinkVm
    {
        public int Id { get; set; }

        public string Url { get; set; }

        public string Text { get; set; }

        public class LinkVmProfile : Profile
        {
            public LinkVmProfile()
            {
                CreateMap<Link, LinkVm>();
            }
        }
    }
}
