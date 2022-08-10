using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TDSAlmoxarifado.Models;

namespace TDSAlmoxarifado.Controllers
{
    public class ColaboradorController : Controller
    {
        BDTDSAlmoxarifado bd = new BDTDSAlmoxarifado();
        // GET: Colaborador
        public ActionResult Index()
        {
            return View(bd.COLABORADOR.ToList());
        }

        [HttpGet]
        public ActionResult Create(string nome, string cargo, int? codigoarea) 
        {
            COLABORADOR colaborador = new COLABORADOR();
            colaborador.COLNOME = nome;
            colaborador.COLCARGO = cargo;
            colaborador.AREID = codigoarea;

            try
            {
                bd.COLABORADOR.Add(colaborador);
                bd.SaveChanges();
            }
            catch (Exception)
            {
                return RedirectToAction("ErrorDB", "Home");
            }

            return RedirectToAction("Index");
        }
    }
}