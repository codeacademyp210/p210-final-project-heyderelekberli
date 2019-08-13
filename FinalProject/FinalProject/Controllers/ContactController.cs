using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class ContactController : MainController
    {
        // GET: Contact
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Contact(Contact contact)
        {
            using (MoviesEntities db = new MoviesEntities())
            {
                db.Contacts.Add(contact);
                db.SaveChanges();
            }

            return RedirectToAction("Index");


            //if (contact.Id == 0)
            //{
            //    db.Contacts.Add(contact);
            //}
            //db.SaveChanges();
            //return View("Index");
        }
    }
}