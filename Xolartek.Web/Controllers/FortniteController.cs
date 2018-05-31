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
            IList<Xolartek.Web.Models.Trait> vm = new List<Xolartek.Web.Models.Trait>();
            vm = db.GetTraits();
            return View(vm);
        }

        public ActionResult Range()
        {
            ViewModel viewmodel = new ViewModel();
            viewmodel.Rarities = db.GetRarities().Select(r => new SelectListItem
            {
                Value = r.Id.ToString(),
                Text = r.Description
            });
            viewmodel.WeaponTypes = db.GetTypes().Select(r => new SelectListItem
            {
                Value = r.Id.ToString(),
                Text = r.Description
            });
            viewmodel.WeaponEdition = db.GetEditions().Select(r => new SelectListItem
            {
                Value = r.Id.ToString(),
                Text = r.Description
            });

            return View(viewmodel);
        }

        public ActionResult Schematic()
        {
            ViewModel viewmodel = new ViewModel();
            return View(viewmodel);
        }

        [HttpPost]
        public ActionResult CreateRange(RangedWeapon weapon)
        {
            return View();
        }
    }
}