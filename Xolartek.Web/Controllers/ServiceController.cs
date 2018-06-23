using Ninject.Infrastructure.Language;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using System.Web.Http;
using Xolartek.Web.Models;
using System.Net.Http;
using System.Net;

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

        public HttpResponseMessage Post([FromBody]string value)
        {
            return new HttpResponseMessage(HttpStatusCode.NotImplemented);
        }

        public HttpResponseMessage Put(int id, [FromBody]string value)
        {
            return new HttpResponseMessage(HttpStatusCode.NotImplemented);
        }

        public HttpResponseMessage Delete(int id)
        {
            return new HttpResponseMessage(HttpStatusCode.NotImplemented);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}