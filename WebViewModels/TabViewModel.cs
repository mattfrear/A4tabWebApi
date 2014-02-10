using System;

namespace WebViewModels
{
    public class TabViewModel
    {
        public int Id { get; set; }

        public string Author { get; set; }

        public int ArtistId { get; set; }

        public string ArtistName { get; set; }

        public string Name { get; set; }

        public DateTime? CreatedOn { get; set; }

        public DateTime? ModifiedOn { get; set; }

        public string Content { get; set; }
    }
}