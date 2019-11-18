using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using api.IServices;
using api.ViewModels;
using AutoMapper;

namespace api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PeaksController : ControllerBase
    {
        private readonly IMapper _mapper;
        private readonly IPeakService _peakService;

        public PeaksController(IMapper mapper, IPeakService peakService)
        {
            _mapper = mapper;
            _peakService = peakService;
        }

        [HttpGet]
        public IList<PeakVm> GetPeaks()
        {
            var peaks = _peakService.GetPeaks();
            return _mapper.Map<IList<PeakVm>>(peaks);
        }

        [HttpGet]
        [Route("{peakId}")]
        public PeakVm GetPeak(int peakId)
        {
            var peak = _peakService.GetPeak(peakId);
            return _mapper.Map<PeakVm>(peak);
        }
    }
}
