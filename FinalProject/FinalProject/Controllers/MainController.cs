using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class MainController : Controller
    {
        protected MoviesEntities db;
        protected Slider Slider;

        protected MainController()
        {
            db = new MoviesEntities();
            Slider = db.Sliders.First();
        }
    }
}
