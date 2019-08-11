using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FinalProject.Models;

namespace FinalProject.Areas.Admin.Controllers
{
    public class MovieActorsController : Controller
    {
        private MoviesEntities db = new MoviesEntities();

        // GET: Admin/MovieActors
        public ActionResult Index()
        {
            var movieActors = db.MovieActors.Include(m => m.Actor).Include(m => m.Movy);
            return View(movieActors.ToList());
        }

        // GET: Admin/MovieActors/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MovieActor movieActor = db.MovieActors.Find(id);
            if (movieActor == null)
            {
                return HttpNotFound();
            }
            return View(movieActor);
        }

        // GET: Admin/MovieActors/Create
        public ActionResult Create()
        {
            ViewBag.ActorID = new SelectList(db.Actors, "Id", "Name");
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image");
            return View();
        }

        // POST: Admin/MovieActors/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,ActorID,MovieID")] MovieActor movieActor)
        {
            if (ModelState.IsValid)
            {
                db.MovieActors.Add(movieActor);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ActorID = new SelectList(db.Actors, "Id", "Name", movieActor.ActorID);
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image", movieActor.MovieID);
            return View(movieActor);
        }

        // GET: Admin/MovieActors/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MovieActor movieActor = db.MovieActors.Find(id);
            if (movieActor == null)
            {
                return HttpNotFound();
            }
            ViewBag.ActorID = new SelectList(db.Actors, "Id", "Name", movieActor.ActorID);
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image", movieActor.MovieID);
            return View(movieActor);
        }

        // POST: Admin/MovieActors/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,ActorID,MovieID")] MovieActor movieActor)
        {
            if (ModelState.IsValid)
            {
                db.Entry(movieActor).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ActorID = new SelectList(db.Actors, "Id", "Name", movieActor.ActorID);
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image", movieActor.MovieID);
            return View(movieActor);
        }

        // GET: Admin/MovieActors/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MovieActor movieActor = db.MovieActors.Find(id);
            if (movieActor == null)
            {
                return HttpNotFound();
            }
            return View(movieActor);
        }

        // POST: Admin/MovieActors/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MovieActor movieActor = db.MovieActors.Find(id);
            db.MovieActors.Remove(movieActor);
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
