using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class IMDBController : MainController
    {
        // GET: IMDB
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Top250()
        {
            return View();
        }
        public ActionResult MoreFrom7()
        {
            return View();
        }
        public ActionResult Top10()
        {
            HomeViewModel models = new HomeViewModel();
            models.Movies = db.Movies.ToList();
            return View(models);
        }
    }
}