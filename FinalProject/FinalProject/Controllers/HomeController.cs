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
        public ActionResult Index( string searching)
        {
            HomeViewModel models = new HomeViewModel();
            models.Movies = db.Movies.ToList();
            models.Genres = db.Genres.ToList();
            return View(models); /*/*(models.Movies.Where(x => x.Name.Contains(searching) || searching == null).ToList());*/
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
            model.Director = db.Movies.Find(Id).Director;
            model.Duration = db.Movies.Find(Id).Duration;
            model.Imdb = db.Movies.Find(Id).Imdb;
            model.Info = db.Movies.Find(Id).Info;
            model.Number = db.Movies.Find(Id).Number;
            model.Production = db.Movies.Find(Id).Production;
            model.Slider = db.Movies.Find(Id).Slider;
            model.Status = db.Movies.Find(Id).Status; 
            model.Year = db.Movies.Find(Id).Year;
            model.Top = db.Movies.Find(Id).Top;
            model.Video = db.Movies.Find(Id).Video;
            model.Category = db.Movies.Find(Id).MovieGenres.ToList();
            model.Star = db.Movies.Find(Id).MovieActors.ToList();
            model.Comm = db.Movies.Find(Id).MovieComments.ToList();
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);
        }
    }
}
