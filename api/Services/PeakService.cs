using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
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
            return _context.Peaks
                .Include(x => x.Region)
                .Include(x => x.Grade)
                .ToList();
        }

        public Peak GetPeak(int peakId)
        {
            return _context.Peaks
                .Where(x => x.Id == peakId)
                .Include(x => x.Region)
                .Include(x => x.Grade)
                .SingleOrDefault();
        }
    }
}