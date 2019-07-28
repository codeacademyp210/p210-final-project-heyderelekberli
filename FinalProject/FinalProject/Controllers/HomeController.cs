using System;
using FinalProject.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class HomeController : MainController
    {
        public ActionResult Index()
        {
            HomeViewModel models = new HomeViewModel();
            models.Slider = db.Sliders.ToList();
            return View(models);
        }
        public ActionResult MoviesProfile()
        {
            return View();
        }
    }
}