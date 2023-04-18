using PeopleCrud.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using SQLite;
using System.IO;

namespace PeopleCrud.Repositories
{
    public class PeopleRepository : IPeopleRepository
    {
        private SQLiteAsyncConnection connection;

        private async Task CreateConnection()
        {
            if (connection != null)
                return;

            var documentPath = 
                Environment.GetFolderPath(
                    Environment.SpecialFolder.MyDocuments
                );

            var databasePath =
                Path.Combine(documentPath, "Peoples.db");

            connection = new SQLiteAsyncConnection( databasePath );
            
            await connection.CreateTableAsync<People>();
            // Aqui poderíamos adicionar tantas quantas tabelas
            // existissem no modelo de nossa aplicação

            if ( await connection.Table<People>().CountAsync() == 0 )
            {
            await connection.InsertAsync(
                     new People() { 
                        Nome= "Luan",
                        Sobrenome= "Zuffo",
                        DataNascimento= new DateTime(2002, 1, 30),
                        Cidade= "Veloso",
                        Uf= "SC",
                        Endereco= "Bairro",
                        Sexo= "M",
                        Deleted= false,
                     }
                 );
             }
        }

        public event EventHandler<People> OnPeopleAdded;
        public event EventHandler<People> OnPeopleUpdated;

        public async Task AddPeople(People people)
        {       
            await CreateConnection();
            await connection.InsertAsync( people );
            OnPeopleAdded?.Invoke(this, people);
        }

        public async Task AddOrUpdate(People people)
        {
            if (people.Id == 0)
            {
                await AddPeople(people);
            }
            else
            { 
                await UpdatePeople(people);
            }
        }

        public async Task<List<People>> GetPeoples()
        {
            await CreateConnection();
            return await connection.Table<People>().ToListAsync();
        }

        public async Task UpdatePeople(People people)
        {
            await CreateConnection();
            await connection.UpdateAsync( people );
            OnPeopleUpdated?.Invoke(this, people);
        }
    }
}
