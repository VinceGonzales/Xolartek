using Domain.Migrations;
using System.Web.Mvc;

namespace Xolartek.Web.Controllers
{
    public class FortniteController : Controller
    {
        private MainDbContext db;

        public FortniteController()
        {
            db = new MainDbContext();
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Schematics()
        {
            return View();
        }
    }
}