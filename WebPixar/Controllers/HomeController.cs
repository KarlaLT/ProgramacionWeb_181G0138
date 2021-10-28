using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebPixar.Models;
using WebPixar.Models.ViewModels;
using WebPixar.Repositories;

namespace WebPixar.Controllers
{
    public class HomeController : Controller
    {
        PixarContext context;

        public HomeController()
        {
            context = new PixarContext();
        }

        public IActionResult Home()
        {
            return View();
        }
        public IActionResult Peliculas()
        {
            PeliculasRepository pr = new PeliculasRepository(context);
            var pelis = pr.GetPeliculas();
            var portadas = pelis.Select(x => new PortadasViewModel(x));
            return View(portadas);
        }
        public IActionResult Cortometrajes(string categoria)
        {
            CortometrajesRepository cr = new CortometrajesRepository(context);
            var cortometrajes = cr.GetCortometrajesByCategoria(categoria);
            var portadas = cortometrajes.Select(x => new PortadasCortometrajesViewModel(x));
            return View(portadas);
        }
 
        public IActionResult Pelicula(int id)
        {
            PeliculasRepository pr = new PeliculasRepository(context);
            var pelicula = pr.GetPeliculaById(id);
            ViewBag.ID = id;
            return View(pelicula);
        }
    }
}
