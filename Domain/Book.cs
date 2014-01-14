using System.Collections.Generic;

namespace Domain
{
    public class Book
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public List<int> TabIds { get; set; }
    }
}