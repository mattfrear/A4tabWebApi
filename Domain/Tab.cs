using System;

namespace Domain
{
    public class Tab
    {
        public int Id { get; set; }

        public string AuthorName { get; set; }

        public Artist Artist { get; set; }

        public string Name { get; set; }

        public DateTime CreatedOn { get; set; }

        public string Content { get; set; }
    }
}
