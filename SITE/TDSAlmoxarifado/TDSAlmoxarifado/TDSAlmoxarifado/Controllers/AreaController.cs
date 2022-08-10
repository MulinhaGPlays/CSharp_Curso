using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TDSAlmoxarifado.Models;

namespace TDSAlmoxarifado.Controllers
{
    public class AreaController : Controller
    {
        BDTDSAlmoxarifado bd = new BDTDSAlmoxarifado();
        // GET: Area
        public ActionResult Index()
        {
            return View(bd.AREA.ToList());
        }

        [HttpGet]
        public ActionResult Create() 
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(string descricao)
        {
            AREA novaArea = new AREA();
            novaArea.AREDESCRICAO = descricao;
            bd.AREA.Add(novaArea);
            try
            {
                bd.SaveChanges();
            }
            catch (Exception)
            {
                return RedirectToAction("ErroBD", "Home");
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Editar(int id, string descricao)
        {
            AREA updateArea = bd.AREA.ToList().Where(y => y.AREID == id).First();
            updateArea.AREDESCRICAO = descricao;
            bd.Entry(updateArea).State = System.Data.Entity.EntityState.Modified;
            try
            {
                bd.SaveChanges();
            }
            catch
            {
                return RedirectToAction("ErroBD", "Home");
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Excluir()
        {
            return View();
        }

    }
}