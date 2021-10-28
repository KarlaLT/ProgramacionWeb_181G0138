using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebPixar.Models;


namespace WebPixar.Repositories
{
    public class CortometrajesRepository
    {
        PixarContext context;
        public CortometrajesRepository(PixarContext context)
        {
            this.context = context;
        }
        public IEnumerable<Cortometraje> GetCortometrajesByCategoria(string categoria)
        {
            return context.Cortometrajes.Where(x=>x.IdCategoriaNavigation.Nombre==categoria).OrderBy(x=>x.Nombre);
        }
        //public Cortometraje GetCortometrajeById(int id)
        //{

        //    //return context.Cortometrajes.Where(x => x.Id == id)
        //    //    .Include(x => x.IdCategoriaNavigation)
        //    //    .ThenInclude((Aparicion y)
        //    //    => y.IdPersonajeNavigation)
        //    //    .FirstOrDefault();
        //}
    }
}
