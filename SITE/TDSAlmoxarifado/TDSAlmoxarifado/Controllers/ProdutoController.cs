using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TDSAlmoxarifado.Models;

namespace TDSAlmoxarifado.Controllers
{
    public class ProdutoController : Controller
    {
        bdTDS_AlmoxarifadoEntities bd = new bdTDS_AlmoxarifadoEntities();
        // GET: Produto
        [HttpGet]
        public ActionResult Index()
        {
            return View(bd.Produto.ToList());
        }
        
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Create(string descricao,string minimo, string maximo, string estoque)
        {
            Produto novoProduto = new Produto();
            novoProduto.PRODESCRICAO = descricao;
            novoProduto.PROMINIMO = Convert.ToInt32(minimo);
            novoProduto.PROMAXIMO = Convert.ToInt32(maximo);
            novoProduto.PROESTOQUE = Convert.ToInt32(estoque);

            bd.Produto.Add(novoProduto);
            bd.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(int? id)
        {
            Produto produtoLocalizar = bd.Produto.ToList().Where(x => x.PROID == id).First();
            return View(produtoLocalizar);
        }
        [HttpGet]
        public ActionResult Delete(int? id)
        {
            return View();
        }
        [HttpGet]
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Produto modelo = bd.Produto.Find(id);
            if (modelo == null) 
            {
                return HttpNotFound();
            }
            return View(modelo);
        }




    }
}