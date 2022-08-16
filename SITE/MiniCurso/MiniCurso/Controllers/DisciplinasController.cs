using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiniCurso.Models;

namespace MiniCurso.Controllers
{
    public class DisciplinasController : Controller
    {
        masterEntities bd = new masterEntities();
        // GET: Cursos
        public ActionResult Index()
        {
            ViewBag.qtdDisciplinas = bd.Disciplinas.ToList().Count();
            return View(bd.Disciplinas.ToList());
        }
    }
}