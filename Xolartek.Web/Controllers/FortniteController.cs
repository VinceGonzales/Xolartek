using Domain.Fortnite;
using System.Web.Mvc;
using Xolartek.Web.Models;

namespace Xolartek.Web.Controllers
{
    public class FortniteController : Controller
    {
        private FortniteRepository db;

        public FortniteController(IFortniteDb ctx)
        {
            db = new FortniteRepository(ctx);
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Schematics()
        {
            ViewModel vm = new ViewModel();
            vm.RangedWeapons = db.GetRangedWeapons();
            vm.MeleeWeapons = db.GetMeleeWeapons();
            vm.TrapWeapons = db.GetTrapWeapons();
            return View(vm);
        }

        public ActionResult Attributes()
        {
            ViewModel vm = new ViewModel();
            vm.Traits = db.GetTraits();
            return View(vm);
        }

        public ActionResult Range()
        {
            ViewModel viewmodel = new ViewModel();
            return View(viewmodel);
        }

        public ActionResult Schematic()
        {
            return View();
        }
    }
}