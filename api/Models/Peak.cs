namespace api.Models
{
    public class Peak
    {
        public int Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string Area { get; set; }

        public int Elevation { get; set; }

        public decimal Latitude  { get; set; }

        public decimal Longitude  { get; set; }

        public Region Region { get; set; }

        public Grade Grade { get; set; }

        public string Duration { get; set; }

        public string Access { get; set; }

        public string Description { get; set; }
    }
}