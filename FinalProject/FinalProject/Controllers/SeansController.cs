using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class SeansController : MainController
    {
        // GET: Seans
        public ActionResult Index()
        {
            HomeViewModel model = new HomeViewModel();
            model.Seans = db.Seans.ToList();
            model.MovieActors = db.MovieActors.ToList();

            return View(model);
        }
        public ActionResult SeansProfile(int? Id)
        {
            if (Id == null)
            {
                return HttpNotFound();
            }
            SeansViewModel model = new SeansViewModel();
            model.Id = db.Seans.Find(Id).Id;
            model.Name = db.Seans.Find(Id).Name;
            model.Image = db.Seans.Find(Id).Image;
            model.Address = db.Seans.Find(Id).Address;
            model.Phone = db.Seans.Find(Id).Phone;
            model.Status = db.Seans.Find(Id).Status;
            model.MovieSeans = db.Seans.Find(Id).MovieSeans.ToList();

            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);
        }
        public ActionResult SeansTable(int? Id)
        {
            if (Id == null)
            {
                return HttpNotFound();
            }
            SeansViewModel model = new SeansViewModel();
            model.Id = db.MovieSeans.Find(Id).Id;
            model.Name = db.MovieSeans.Find(Id).Sean.Name;
            model.Phone = db.MovieSeans.Find(Id).Sean.Phone;
            model.Address = db.MovieSeans.Find(Id).Sean.Address;
            model.Image = db.MovieSeans.Find(Id).Sean.Image;
            model.Status = db.MovieSeans.Find(Id).Sean.Status;
            model.MovieSeans = db.MovieSeans.Find(Id).Sean.MovieSeans.ToList();
            model.SeansTables = db.MovieSeans.Find(Id).Movy.SeansTables.ToList();
            ;
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);
        }
    }
}