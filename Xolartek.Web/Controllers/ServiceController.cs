using Domain.Fortnite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Xolartek.Web.Controllers
{
    public class ServiceController : ApiController
    {
        private FortniteDb db;

        public ServiceController(IFortniteDb ctx)
        {
            db = new FortniteDb();
            db.Configuration.ProxyCreationEnabled = false;
        }

        public IEnumerable<WeaponRange> Get()
        {
            return db.WeaponRanges.ToList();
        }

        public string Get(int id)
        {
            return "value";
        }

        public string Get(string id)
        {
            return "invalid id";
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