using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class SeansController : Controller
    {
        // GET: Seans
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult SeansProfile()
        {
            return View();
        }
        public ActionResult SeansTable()
        {
            return View();
        }
    }
}