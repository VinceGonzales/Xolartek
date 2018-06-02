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

        [Route("api/fortnite/traits/{desc}")]
        public IList<Trait> GetTrait(string desc)
        {
            IList<Trait> result = db.GetTraits(desc);
            if (result != null)
            {
                return result;
            }
            else
            {
                return new List<Trait>();
            }
        }

        [Route("api/fortnite/materials/{desc}")]
        public IList<Material> GetMaterial(string desc)
        {
            IList<Material> result = db.GetMaterials(desc);
            if (result != null)
            {
                return result;
            }
            else
            {
                return new List<Material>();
            }
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