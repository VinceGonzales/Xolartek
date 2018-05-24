using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Xolartek.Web.Models;

namespace Xolartek.Web.Controllers
{
    [Authorize(Roles = "Administrator")]
    public class AdminController : Controller
    {
        private Repository db;

        public AdminController()
        {
            db = new Repository();
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Users()
        {
            IList<UserAccount> accounts = db.GetUsers();
            return View(accounts);
        }

        public ActionResult Groups()
        {
            IList<UserRole> roles = db.GetRoles();
            return View(roles);
        }
    }
}