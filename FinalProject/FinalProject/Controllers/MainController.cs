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
        protected Movy Movie;
        protected Actor Actor;
        protected Genre Genre;
        protected Sean Seans;
        protected Comment Comment;
        protected MovieActor MovieActor;
        protected MovieGenre MovieGenre;
        protected Contact Contact;

        protected MainController()
        {
            db = new MoviesEntities();
            Movie = db.Movies.FirstOrDefault();
            Actor = db.Actors.FirstOrDefault();
            Seans = db.Seans.FirstOrDefault();
            Comment = db.Comments.FirstOrDefault();
            Genre = db.Genres.FirstOrDefault();
            MovieActor = db.MovieActors.FirstOrDefault();
            MovieGenre = db.MovieGenres.FirstOrDefault();
            Contact = db.Contacts.FirstOrDefault();
        }
    }
}
