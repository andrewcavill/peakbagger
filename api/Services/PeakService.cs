using System.Collections.Generic;
using api.IServices;
using api.Models;

namespace api.Services
{
    public class PeakService : IPeakService
    {
        public IList<Peak> GetPeaks()
        {
            return new List<Peak> {
                new Peak {
                    Id = 1,
                    Name = "Ruapehu"
                }
            };
        }
    }
}