using PeopleCrud.Models;
using PeopleCrud.Repositories;
using PeopleCrud.Views;

using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace PeopleCrud.ViewModels
{
    public class MainViewModel : ViewModel
    {
        private readonly PeopleRepository repository;

        public ObservableCollection<PeopleItemViewModel> Poeples { get; set; }

        public MainViewModel(PeopleRepository repository)
        {
            repository.OnPeopleAdded += (sender, people) =>
                Peoples.Add(CreatePeopleItemViewModel(people));

            repository.OnPeopleUpdated += (sender, people) =>
                Task.Run(async () => await LoadData());

            this.repository = repository;
            Task.Run(async () => await LoadData());
        }

        public PeopleItemViewModel SelectedPeople
        {
            get { return null; }
            set
            {
                Device.BeginInvokeOnMainThread(async () => await NavigateToItem(value));
                RaisePropertyChanged(nameof(SelectedPeople));
            }
        }

        private async Task NavigateToItem(PeopleItemViewModel people)
        {

            if (people == null) return;
            var peopleView = Resolver.Resolve<PeopleView>();
            //vm é a viewmodel
            var vm = peopleView.BindingContext as PeopleViewModel;
            vm.PeopleItem = people.People;
            await Navigation.PushAsync(peopleView);

        }

        private async Task LoadData()
        {
            var items = await repository.GetPeoples();
            if (!ShowAll)
            {
                items = items.Where(w => w.Deleted == false).ToList();
            }
            var itemViewModels = items.Select(i => CreatePeopleItemViewModel(i));
            Peoples = new ObservableCollection<PeopleItemViewModel>(itemViewModels);
        }

        private PeopleItemViewModel CreatePeopleItemViewModel(People people)
        {
            var itemViewModel = new PeopleItemViewModel(people);
            itemViewModel.PeopleStatusChanged += ItemStatusChanged;
            return itemViewModel;
        }

        private void ItemStatusChanged(object sender, EventArgs e)
        {
            if (sender is PeopleItemViewModel people)
            {
                if (!ShowAll && people.People.Deleted)
                {
                    Peoples.Remove(people);
                }

                Task.Run(async () => await repository.UpdatePeople(people.People));

            }
        }

        public bool ShowAll { get; set; }

        public string FilterText => ShowAll ? "Todos" : "Ativos";

        public ICommand ToggleFilter => new Command(
            async () =>
            {
                ShowAll = !ShowAll;
                await LoadData();
            }
        );

        // Evento de clique no botão para adicionar item
        public ICommand AddPeople => new Command(async () => {

            var peopleView = Resolver.Resolve<PeopleView>();
            await Navigation.PushAsync(peopleView);

        });
    }
}
