using Ninject.Infrastructure.Language;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using System.Web.Http;
using Xolartek.Web.Models;

namespace Xolartek.Web.Controllers
{
    public class ServiceController : ApiController
    {
        private FortniteRepository db;

        public ServiceController(Domain.Fortnite.IFortniteDb ctx)
        {
            db = new FortniteRepository(ctx);
        }

        public ViewModel Get()
        {
            ViewModel vm = new ViewModel();
            vm.RangedWeapons = db.GetRangedWeapons();
            vm.MeleeWeapons = db.GetMeleeWeapons();
            vm.TrapWeapons = db.GetTrapWeapons();
            vm.Rarities = db.GetRarities().Select(r => new SelectListItem
            {
                Value = r.Id.ToString(),
                Text = r.Description
            });
            vm.WeaponTypes = db.GetTypes().Select(r => new SelectListItem
            {
                Value = r.Id.ToString(),
                Text = r.Description
            });
            vm.WeaponEdition = db.GetEditions().Select(r => new SelectListItem
            {
                Value = r.Id.ToString(),
                Text = r.Description
            });
            vm.Traits = db.GetTraits();
            vm.Materials = db.GetMaterials();
            return vm;
        }

        public string Get(int id)
        {
            return "value";
        }

        //public IList<Trait> GetTrait()
        //{
        //    return db.GetTraits();
        //}
        //
        //public IList<Material> GetMaterial()
        //{
        //    return db.GetMaterials();
        //}

        public string Post([FromBody]string value)
        {
            return value;
        }

        public void Put(int id, [FromBody]string value)
        {
        }

        public void Delete(int id)
        {
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}