using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class ActorsController : MainController
    {
        // GET: Actors
        public ActionResult Index()
        {
            HomeViewModel models = new HomeViewModel();
            models.Actors = db.Actors.ToList();
            return View(models);
        }

        public ActionResult ActorsProfile(int? Id)
        {
            if (Id == null)
            {
                return HttpNotFound();
            }
            ActorViewModel model = new ActorViewModel();
            model.Id = db.Actors.Find(Id).Id;
            model.Name = db.Actors.Find(Id).Name;
            model.Image = db.Actors.Find(Id).Image;
            model.Awards = db.Actors.Find(Id).Awards;
            model.Born = db.Actors.Find(Id).Born;
            model.Country = db.Actors.Find(Id).Country;
            model.Nationality = db.Actors.Find(Id).Nationality;
            model.Status = db.Actors.Find(Id).Status;
            model.Info = db.Actors.Find(Id).Info;
            model.Wikipedia = db.Actors.Find(Id).Wikipedia;
           
            model.MovieActors = db.Movies.Find(Id).MovieActors.ToList();
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);
        }
     
    }
}