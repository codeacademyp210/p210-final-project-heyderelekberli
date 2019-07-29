using System;
using FinalProject.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net;

namespace FinalProject.Controllers
{
    public class HomeController : MainController
    {
        

        public ActionResult Index()
        {
            HomeViewModel models = new HomeViewModel();
            models.Movies = db.Movies.ToList();
            return View(models);
        }
        public ActionResult MoviesProfile(int? Id)
        {
            if (Id == null)
            {
                return HttpNotFound();
            }
            DetailsViewModel model = new DetailsViewModel();
            model.Id = db.Movies.Find(Id).Id;
            model.Name = db.Movies.Find(Id).Name;
            model.Image = db.Movies.Find(Id).Image;
            model.ActorID = db.Movies.Find(Id).ActorID;
            model.Director = db.Movies.Find(Id).Director;
            model.Duration = db.Movies.Find(Id).Duration;
            model.Imdb = db.Movies.Find(Id).Imdb;
            model.Info = db.Movies.Find(Id).Info;
            model.Number = db.Movies.Find(Id).Number;
            model.Production = db.Movies.Find(Id).Production;
            model.Slider = db.Movies.Find(Id).Slider;
            model.Status = db.Movies.Find(Id).Status; 
            model.Video = db.Movies.Find(Id).Video;
            model.Category = db.Movies.Find(Id).MovieGenres.ToList();
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);

        }
      
    }
}