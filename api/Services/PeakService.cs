using System.Collections.Generic;
using System.Linq;
using api.IServices;
using api.Models;

namespace api.Services
{
    public class PeakService : IPeakService
    {
        private readonly PeakBaggerContext _context;

        public PeakService(PeakBaggerContext context) {
            _context = context;
        }

        public IList<Peak> GetPeaks()
        {
            return _context.Peaks.ToList();
        }
    }
}