using PeopleCrud.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace PeopleCrud.ViewModels
{
    public class PeopleItemViewModel : ViewModel
    {
        public People People { get; private set; }

        public PeopleItemViewModel(People people) => People = people;

        public event EventHandler PeopleStatusChanged;

        public string StatusText => 
             (People.Deleted ? "Deletado" : "Ativo");

        /* A instrução acima é a mesma coisa que esta
         * Só que está com notação funcional => (LAMBDA)
        public string StatusText()
        {
            if (People.Completed)
                return "Reativar";
            else
                return "Completo";
        }
        */

        public ICommand ToggleDeleted => new Command(        
            (arg) => { 
                People.Deleted = !People.Deleted;
                PeopleStatusChanged?.Invoke(this, new EventArgs());
            }
        );

    }
}
