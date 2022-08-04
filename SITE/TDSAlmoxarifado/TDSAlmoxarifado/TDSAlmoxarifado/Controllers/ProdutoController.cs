using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TDSAlmoxarifado.Models;

namespace TDSAlmoxarifado.Controllers
{
    public class ProdutoController : Controller
    {
        BDTDSAlmoxarifado bd = new BDTDSAlmoxarifado();
        // GET: Produto
        public ActionResult Index()
        {
            return View(bd.PRODUTO.ToList());
        }

        public ActionResult Create() 
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(string descricao, string minimo, string maximo, string estoque)
        {
            PRODUTO novoProduto = new PRODUTO();
            novoProduto.PRODESCRICAO = descricao;
            novoProduto.PROMINIMO = Convert.ToInt32(minimo);
            novoProduto.PROMAXIMO = Convert.ToInt32(maximo);
            novoProduto.PROESTOQUE = Convert.ToInt32(estoque);

            bd.PRODUTO.Add(novoProduto);
            bd.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(int? id) 
        {
            ViewBag.meuProduto=bd.PRODUTO.ToList().Where(x => x.PROID == id).First();

            PRODUTO produtoLocalizar = bd.PRODUTO.ToList().Where(x => x.PROID == id).First();
            return View(produtoLocalizar);
        }

        [HttpPost]
        public ActionResult Edit(int? id, string descricao, string minimo, string maximo, string estoque) 
        {
            PRODUTO atualizaProduto = bd.PRODUTO.ToList().Where(x => x.PROID == id).First();
            atualizaProduto.PRODESCRICAO = descricao;
            atualizaProduto.PROMINIMO = Convert.ToInt32(minimo);
            atualizaProduto.PROMAXIMO = Convert.ToInt32(maximo);
            atualizaProduto.PROESTOQUE = Convert.ToInt32(estoque);

            bd.Entry(atualizaProduto).State = EntityState.Modified;

            bd.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Delete(int? id)
        {
            PRODUTO excluirProduto = bd.PRODUTO.ToList().Where(x => x.PROID == id).First();

            return View(excluirProduto);
        }

        [HttpPost]
        public ActionResult DeleteConfirma(int? id)
        {
            PRODUTO excluirProduto = bd.PRODUTO.ToList().Where(x => x.PROID == id).First();
            bd.PRODUTO.Remove(excluirProduto);

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

        [HttpGet]
        public ActionResult Details(int? id)
        {
            return View();
        }
    }
}