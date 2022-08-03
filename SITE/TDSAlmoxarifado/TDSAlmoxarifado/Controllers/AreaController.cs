using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TDSAlmoxarifado.Controllers
{
    public class AreaController : Controller
    {
        // GET: Area
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Details()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Edit()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Delete()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(string descricao) 
        {
            return RedirectToAction("index");
        }
    }
}