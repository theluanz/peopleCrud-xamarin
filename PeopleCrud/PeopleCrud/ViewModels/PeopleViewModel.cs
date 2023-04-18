using System;
using System.Collections.Generic;
using System.Text;
using PeopleCrud.Models;
using PeopleCrud.Repositories;
using System.Windows.Input;
using Xamarin.Forms;

namespace PeopleCrud.ViewModels
{
    public class PeopleViewModel : ViewModel
    {
        private readonly PeopleRepository repository;

        public People PeopleItem { get; set; }

        public PeopleViewModel(PeopleRepository repository)
        {
            this.repository = repository;
            PeopleItem = new People() { DataNascimento= DateTime.Now.AddDays(1) };
        }

        public ICommand Save => new Command( async () => {

            await repository.AddOrUpdate(PeopleItem);
            await Navigation.PopAsync();

        } );

    }
}
