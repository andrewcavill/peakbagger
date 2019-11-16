using Microsoft.EntityFrameworkCore;

namespace api.Models
{
    public class PeakBaggerContext : DbContext
    {
        public PeakBaggerContext(DbContextOptions<PeakBaggerContext> options) : base(options) { }

        public DbSet<Peak> Peaks { get; set; }

        public DbSet<Region> Regions { get; set; }

        public DbSet<Grade> Grades { get; set; }
    }
}