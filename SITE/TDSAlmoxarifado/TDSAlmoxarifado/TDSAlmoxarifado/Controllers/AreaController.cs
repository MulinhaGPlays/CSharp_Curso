using System;
using System.Collections.Generic;
using System.Data.Entity;
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
        [HttpGet]
        public ActionResult Index()
        {
            //var dados = bd.AREA.ToList();
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
            AREA novoArea = new AREA();
            novoArea.AREDESCRICAO = descricao;
            bd.AREA.Add(novoArea);

            try
            {
                bd.SaveChanges();
            }
            catch (Exception)
            {

                return RedirectToAction("ErrorBD", "Home");
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            AREA exibirArea = bd.AREA.ToList().Where(y => y.AREID == id).First();       
            return View(exibirArea);
        }

        [HttpPost]
        public ActionResult Editar(int id, string descricao)
        {
            AREA updateArea = bd.AREA.ToList().Where(y => y.AREID == id).First();
            updateArea.AREDESCRICAO = descricao;
            bd.Entry(updateArea).State = EntityState.Modified;
            try
            {
                bd.SaveChanges();
            }
            catch (Exception)
            {
                return RedirectToAction("ErrorBD", "Home");
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            AREA exibirArea = bd.AREA.ToList().Where(y => y.AREID == id).First();
            return View(exibirArea);
        }

        [HttpPost]
        public ActionResult DeleteConfirmar(int id)
        {
            AREA excluirArea = bd.AREA.ToList().Where(y => y.AREID == id).First();
            bd.AREA.Remove(excluirArea);

            try
            {
                bd.SaveChanges();
            }
            catch (Exception)
            {
                Mensagem.textoErro = "Não é possível excluir uma área já relacionado a um colaborador";
                return RedirectToAction("ErrorBD", "Home");
            }

            return RedirectToAction("Index");
        }

    }
}