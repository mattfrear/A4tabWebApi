using System.Collections.Generic;

namespace WebViewModels
{
    public class TabsResponseViewModel
    {
        public IEnumerable<TabViewModel> Tabs { get; set; }
        public int TotalCount { get; set; }
    }
}
