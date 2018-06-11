using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Xolartek.Web.Models;

namespace Xolartek.Web.Controllers
{
    public class RangeController : ApiController
    {
        private FortniteRepository db;

        public RangeController(Domain.Fortnite.IFortniteDb ctx)
        {
            db = new FortniteRepository(ctx);
        }

        public IEnumerable<RangedWeapon> Get()
        {
            return db.GetRangedWeapons();
        }

        public RangedWeapon Get(int id)
        {
            RangedWeapon result = db.GetRangedWeapon(id);
            if(result == null)
            {
                result = new RangedWeapon();
            }
            return result;
        }

        public void Post([FromBody]RangedWeapon data)
        {
            RangedWeapon result = db.PostRangedWeapon(data);
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