using Ninject.Infrastructure.Language;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
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

        public IList<RangedWeapon> Get()
        {
            return db.GetRangedWeapons();
        }

        public string Get(int id)
        {
            return "value";
        }

        public IList<Trait> GetTrait()
        {
            return db.GetTraits();
        }

        public IList<Material> GetMaterial()
        {
            return db.GetMaterials();
        }

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
    }
}