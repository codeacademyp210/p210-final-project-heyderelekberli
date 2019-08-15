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
    public class SeansController : Controller
    {
        private MoviesEntities db = new MoviesEntities();

        // GET: Admin/Seans
        public ActionResult Index()
        {
            return View(db.Seans.ToList());
        }

        // GET: Admin/Seans/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sean sean = db.Seans.Find(id);
            if (sean == null)
            {
                return HttpNotFound();
            }
            return View(sean);
        }

        // GET: Admin/Seans/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Seans/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Image,Address,Phone,Status")] Sean sean)
        {
            if (ModelState.IsValid)
            {
                db.Seans.Add(sean);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(sean);
        }

        // GET: Admin/Seans/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sean sean = db.Seans.Find(id);
            if (sean == null)
            {
                return HttpNotFound();
            }
            return View(sean);
        }

        // POST: Admin/Seans/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Image,Address,Phone,Status")] Sean sean)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sean).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(sean);
        }

        // GET: Admin/Seans/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sean sean = db.Seans.Find(id);
            if (sean == null)
            {
                return HttpNotFound();
            }
            return View(sean);
        }

        // POST: Admin/Seans/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Sean sean = db.Seans.Find(id);
            db.Seans.Remove(sean);
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
