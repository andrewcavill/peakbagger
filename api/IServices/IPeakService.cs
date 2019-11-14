using System.Collections.Generic;
using api.Models;

namespace api.IServices
{
    public interface IPeakService
    {
        IList<Peak> GetPeaks();
    }
}