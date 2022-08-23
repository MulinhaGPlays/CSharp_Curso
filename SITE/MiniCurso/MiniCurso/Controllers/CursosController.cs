using MiniCurso.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MiniCurso.Controllers
{
    public class CursosController : Controller
    {
        masterEntities bd = new masterEntities();
        // GET: Cursos
        public ActionResult Index()
        {
            ViewBag.qtdCursos = bd.Cursos.ToList().Count();
            return View(bd.Cursos.ToList());
        }
        public ActionResult Exibir()
        {
            return View(bd.Cursos.ToList());
        }
        public ActionResult Editar()
        {
            return View(bd.Cursos.ToList());
        }
        public ActionResult Apagar()
        {
            return View(bd.Cursos.ToList());
        }
    }
}