namespace Domain
{
    public class TabQuery
    {
        public TabQuery()
        {
            Offset = 0;
            Limit = 10;
            Sort = "Tab.Id";
            Fields = "*";
        }
        public int Offset { get; set; }
        public int Limit { get; set; }
        public string Sort { get; set; }
        public string Fields { get; set; }
    }
}
