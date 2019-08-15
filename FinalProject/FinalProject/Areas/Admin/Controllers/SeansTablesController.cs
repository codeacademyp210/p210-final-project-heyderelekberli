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
    public class SeansTablesController : Controller
    {
        private MoviesEntities db = new MoviesEntities();

        // GET: Admin/SeansTables
        public ActionResult Index()
        {
            var seansTables = db.SeansTables.Include(s => s.Movy);
            return View(seansTables.ToList());
        }

        // GET: Admin/SeansTables/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SeansTable seansTable = db.SeansTables.Find(id);
            if (seansTable == null)
            {
                return HttpNotFound();
            }
            return View(seansTable);
        }

        // GET: Admin/SeansTables/Create
        public ActionResult Create()
        {
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image");
            return View();
        }

        // POST: Admin/SeansTables/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,MovieID,Time,Hall,Price")] SeansTable seansTable)
        {
            if (ModelState.IsValid)
            {
                db.SeansTables.Add(seansTable);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image", seansTable.MovieID);
            return View(seansTable);
        }

        // GET: Admin/SeansTables/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SeansTable seansTable = db.SeansTables.Find(id);
            if (seansTable == null)
            {
                return HttpNotFound();
            }
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image", seansTable.MovieID);
            return View(seansTable);
        }

        // POST: Admin/SeansTables/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,MovieID,Time,Hall,Price")] SeansTable seansTable)
        {
            if (ModelState.IsValid)
            {
                db.Entry(seansTable).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MovieID = new SelectList(db.Movies, "Id", "Image", seansTable.MovieID);
            return View(seansTable);
        }

        // GET: Admin/SeansTables/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SeansTable seansTable = db.SeansTables.Find(id);
            if (seansTable == null)
            {
                return HttpNotFound();
            }
            return View(seansTable);
        }

        // POST: Admin/SeansTables/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SeansTable seansTable = db.SeansTables.Find(id);
            db.SeansTables.Remove(seansTable);
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
