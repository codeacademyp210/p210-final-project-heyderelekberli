using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FinalProject.Areas.Admin.Helpers;
using FinalProject.Models;

namespace FinalProject.Areas.Admin.Controllers
{
    [Auth]
    public class MovieGenresController : Controller
    {
        private MoviesEntities db = new MoviesEntities();

        // GET: Admin/MovieGenres
        public ActionResult Index()
        {
            var movieGenres = db.MovieGenres.Include(m => m.Genre).Include(m => m.Movy);
            return View(movieGenres.ToList());
        }

        // GET: Admin/MovieGenres/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MovieGenre movieGenre = db.MovieGenres.Find(id);
            if (movieGenre == null)
            {
                return HttpNotFound();
            }
            return View(movieGenre);
        }

        // GET: Admin/MovieGenres/Create
        public ActionResult Create()
        {
            ViewBag.GenreID = new SelectList(db.Genres, "Id", "Name");
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image");
            return View();
        }

        // POST: Admin/MovieGenres/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,MovieID,GenreID")] MovieGenre movieGenre)
        {
            if (ModelState.IsValid)
            {
                db.MovieGenres.Add(movieGenre);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.GenreID = new SelectList(db.Genres, "Id", "Name", movieGenre.GenreID);
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image", movieGenre.MovieID);
            return View(movieGenre);
        }

        // GET: Admin/MovieGenres/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MovieGenre movieGenre = db.MovieGenres.Find(id);
            if (movieGenre == null)
            {
                return HttpNotFound();
            }
            ViewBag.GenreID = new SelectList(db.Genres, "Id", "Name", movieGenre.GenreID);
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image", movieGenre.MovieID);
            return View(movieGenre);
        }

        // POST: Admin/MovieGenres/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,MovieID,GenreID")] MovieGenre movieGenre)
        {
            if (ModelState.IsValid)
            {
                db.Entry(movieGenre).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.GenreID = new SelectList(db.Genres, "Id", "Name", movieGenre.GenreID);
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image", movieGenre.MovieID);
            return View(movieGenre);
        }

        // GET: Admin/MovieGenres/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MovieGenre movieGenre = db.MovieGenres.Find(id);
            if (movieGenre == null)
            {
                return HttpNotFound();
            }
            return View(movieGenre);
        }

        // POST: Admin/MovieGenres/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MovieGenre movieGenre = db.MovieGenres.Find(id);
            db.MovieGenres.Remove(movieGenre);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
