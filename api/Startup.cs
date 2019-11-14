using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using api.Models;
using api.IServices;
using api.Services;
using api.ViewModels;
using AutoMapper;

namespace api
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<PeakBaggerContext>(options =>
                options.UseNpgsql(Configuration.GetConnectionString("PeakBaggerContext")));
                //options.UseNpgsql("Host=localhost;Port=5432;Username=postgres;Password=Blues123;Database=peakbagger;"));

            services.AddControllers();

            services.AddAutoMapper(typeof(PeakVm));

            services.AddScoped<IPeakService, PeakService>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
