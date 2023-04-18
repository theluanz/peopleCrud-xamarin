using System;
using SQLite;
using System.Collections.Generic;
using System.Text;

namespace PeopleCrud.Models
{
    public class People
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public DateTime DataNascimento { get; set; }
        public string Sexo { get; set; }
        public string Endereco { get; set; }
        public string Cidade { get; set; }
        public string Uf { get; set; }
        public bool Deleted { get; set; }
    }
}
