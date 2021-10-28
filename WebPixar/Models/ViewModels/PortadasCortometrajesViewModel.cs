using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using WebPixar.Models;
using WebPixar.Repositories;
namespace WebPixar.Models.ViewModels
{
    public class PortadasCortometrajesViewModel
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Portada { get; set; }
        public string Codigo { get; set; }
        public string Categoria { get; set; }

        public PortadasCortometrajesViewModel(Cortometraje ct)
        {
            Id = ct.Id;
            Nombre = ct.Nombre;
            Portada = string.Concat(ct.Id.ToString(), "_pc.jpg");
            Codigo = Regex.Replace(ct.Nombre, "~[a-zA-Z0-9]", "");
            Categoria = ct.IdCategoriaNavigation.Nombre;
        }
    }
}