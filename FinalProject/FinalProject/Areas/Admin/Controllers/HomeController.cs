using FinalProject.Areas.Admin.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        [Auth]
        public ActionResult Index()
        {
            return View();
        }
    }
}