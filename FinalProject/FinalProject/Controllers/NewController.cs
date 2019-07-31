using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class NewController : MainController
    {
        // GET: New
        public ActionResult Index()
        {
            HomeViewModel models = new HomeViewModel();
            models.Movies = db.Movies.ToList();
            return View(models);
        }
    }
}