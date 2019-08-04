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
        public ActionResult CategoryProfile(int? Id)
        {
            if (Id == null)
            {
                return HttpNotFound();
            }
            CategoryViewModel model = new CategoryViewModel();
            model.Id = db.Genres.Find(Id).Id;
            model.Name = db.Genres.Find(Id).Name;
            model.Category = db.Movies.Find(Id).MovieGenres.ToList();
        
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);
        }
    }
}