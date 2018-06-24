using Domain.Fortnite;
using System.Web.Mvc;
using Xolartek.Web.Models;
using System.Linq;
using Ninject.Infrastructure.Language;
using System.Collections.Generic;

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
            ReportVM viewmodel = new ReportVM();
            viewmodel.WaterWeapons = db.GetWeaponsByTrait("Water Damage");
            viewmodel.FireWeapons = db.GetWeaponsByTrait("Fire Damage");
            viewmodel.NatureWeapons = db.GetWeaponsByTrait("Nature Damage");
            return View(viewmodel);
        }

        public ActionResult Schematics()
        {
            ViewModel vm = new ViewModel();
            //vm.RangedWeapons = db.GetRangedWeapons();
            //vm.MeleeWeapons = db.GetMeleeWeapons();
            //vm.TrapWeapons = db.GetTrapWeapons();
            return View(vm);
        }

        public ActionResult Attributes()
        {
            IList<Xolartek.Web.Models.Schematic> vm = new List<Xolartek.Web.Models.Schematic>();
            vm = db.GetSchematicList();
            return View(vm);
        }

        public ActionResult Schematic()
        {
            ViewBag.Rarities = db.GetRarities().Select(r => new SelectListItem
            {
                Value = r.Id.ToString(),
                Text = r.Description
            });
            ViewBag.WeaponTypes = db.GetTypes().Select(r => new SelectListItem
            {
                Value = r.Id.ToString(),
                Text = r.Description
            });
            ViewBag.WeaponEdition = db.GetEditions().Select(r => new SelectListItem
            {
                Value = r.Id.ToString(),
                Text = r.Description
            });
            return View();
        }

        [HttpPost]
        public ActionResult CreateRange(RangedWeapon weapon)
        {
            return View();
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}