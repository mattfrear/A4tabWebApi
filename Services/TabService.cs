using System;
using System.Collections.Generic;
using System.Linq;
using Domain;
using Repositories;
using Repositories.Contracts;
using Services.Contracts;

namespace Services
{
    public class TabService : ITabService
    {
        private readonly IRepository<Tab> tabRepository;
        private readonly IRepository<Artist> artistRepository;

        public TabService(IRepository<Tab> tabRepository, IRepository<Artist> artistRepository)
        {
            this.tabRepository = tabRepository;
            this.artistRepository = artistRepository;
        }

        public IEnumerable<Tab> GetAll(TabQueryOption tabQueryOption)
        {
            return tabRepository.GetAll(tabQueryOption);
        }

        public IEnumerable<Tab> GetRecentTabs()
        {
            return tabRepository.GetAll(new TabQueryOption { Fields = "Tab.Id, Artist.Name, Tab.Name, Artist.Id", Sort = "-Tab.CreatedOn" });
        }

        public void InsertOrUpdate(Tab tab)
        {
            if (tab.Id == 0)
            {
                Insert(tab);
            }
            else
            {
                Update(tab);
            }
        }

        private void Update(Tab tab)
        {
            throw new System.NotImplementedException();
        }

        public void Insert(Tab tab)
        {
            if (tab.Artist == null || (tab.Artist.Id == 0 && string.IsNullOrWhiteSpace(tab.Artist.Name)))
            {
                throw new ArgumentException("Tab.Artist cannot be null");
            }

            if (tab.Artist.Id == 0)
            {
                var artist = artistRepository.SearchFor(tab.Artist.Name).FirstOrDefault();
                if (artist == null)
                {
                    artistRepository.Insert(tab.Artist);
                }
                else
                {
                    tab.Artist.Id = artist.Id;
                }
            }

            tabRepository.Insert(tab);
        }

        public Tab GetById(int tabId, TabQueryOption tabQueryOption)
        {
            return tabRepository.GetById(tabId, tabQueryOption);
        }
    }
}
