using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace FinalProject.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        private readonly MoviesEntities db;
        public LoginController()
        {
            db = new MoviesEntities();
        }
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Login Login)
        {
            bool isMatch = false;
            if (string.IsNullOrEmpty(Login.Email) || string.IsNullOrEmpty(Login.Password))
            {
                Session["loginError"] = "Email or Password is wrong!";
                return RedirectToAction("Index", "Login");
            }
            Login login = db.Logins.FirstOrDefault(l => l.Email == Login.Email);
            if (login != null)
            {
                isMatch = Crypto.VerifyHashedPassword(login.Password, Login.Password);
                if (isMatch == true)
                {
                    Session["isLogin"] = true;
                    return RedirectToAction("Index", "Home", new { area = "Admin" });
                }
            }
            Session["loginError"] = "Email or Password is wrong!";
            return RedirectToAction("Index", "Login");
        }
        public ActionResult Logout()
        {
            Session["isLogin"] = null;
            return RedirectToAction("Index", "Login");
        }
        public ActionResult HashPass()
        {
            string p = "Admin1234";
            string hashedPass = Crypto.HashPassword(p);
            return Content(hashedPass);
        }
    }
}
