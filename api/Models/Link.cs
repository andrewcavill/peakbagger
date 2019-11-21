namespace api.Models
{
    public class Link
    {
        public int Id { get; set; }

        public Peak Peak { get; set; }

        public string Url { get; set; }

        public string Text { get; set; }
    }
}