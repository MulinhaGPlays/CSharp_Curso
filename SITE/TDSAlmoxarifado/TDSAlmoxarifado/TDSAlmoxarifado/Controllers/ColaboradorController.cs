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
        public ActionResult Create() 
        {
            ViewBag.listaArea = bd.AREA.ToList();
            return View();
        }

        [HttpPost]
        public ActionResult Create(string nome, string cargo, int codigoarea)
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

                return RedirectToAction("ErrorBD", "Home");
            }

            return RedirectToAction("Index");
            
        }
        [HttpGet]
        public ActionResult Delete(int? id)
        {
            COLABORADOR excluirColaborador = bd.COLABORADOR.ToList().Where(x => x.COLID == id).First();

            return View(excluirColaborador);
        }

        [HttpPost]
        public ActionResult DeleteConfirma(int? id)
        {
            COLABORADOR excluirColaborador = bd.COLABORADOR.ToList().Where(x => x.COLID == id).First();
            bd.COLABORADOR.Remove(excluirColaborador);

            try
            {
                bd.SaveChanges();
            }
            catch (Exception e)
            {
                ViewBag.errotexto = e.Message;
                return RedirectToAction("Index");
            }

            return RedirectToAction("Index");
        }
    }
}