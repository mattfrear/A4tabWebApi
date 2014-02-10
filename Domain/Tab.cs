using System;

namespace Domain
{
    public class Tab
    {
        public int Id { get; set; }

        public string Author { get; set; }

        public Artist Artist { get; set; }

        public string Name { get; set; }

        public DateTime? CreatedOn { get; set; }
        
        public DateTime? ModifiedOn { get; set; }

        public string Content { get; set; }
    }
}
