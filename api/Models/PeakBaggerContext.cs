using Microsoft.EntityFrameworkCore;

namespace api.Models
{
    public class PeakBaggerContext : DbContext
    {
        public PeakBaggerContext(DbContextOptions<PeakBaggerContext> options) : base(options) { }




    }
}