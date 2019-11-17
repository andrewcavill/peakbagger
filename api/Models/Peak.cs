namespace api.Models
{
    public class Peak
    {
        public int Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string Location { get; set; }

        public Region Region { get; set; }

        public Grade Grade { get; set; }
    }
}