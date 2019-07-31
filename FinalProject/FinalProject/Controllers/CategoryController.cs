using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class CategoryController : MainController
    {
        // GET: Category
        public ActionResult Index()
        {
            HomeViewModel model = new HomeViewModel();
            model.Genres = db.Genres.ToList();
            return View(model);
        }
    }
}