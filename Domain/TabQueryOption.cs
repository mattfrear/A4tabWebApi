namespace Domain
{
    public class TabQueryOption
    {
        public TabQueryOption()
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
