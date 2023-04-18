using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using PeopleCrud.Models;

namespace PeopleCrud.Repositories
{
    public interface IPeopleRepository
    {
        event EventHandler<People> OnPeopleAdded;
        event EventHandler<People> OnPeopleUpdated;

        Task<List<People>> GetPeoples();
        Task AddPeople(People people);
        Task UpdatePeople(People people);
        Task AddOrUpdate(People people);
    }
}
