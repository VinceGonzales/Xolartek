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
            try
            {
                return db.GetRangedWeapons();
            }
            catch (Exception e)
            {
                throw new HttpResponseException(HttpStatusCode.InternalServerError);
            }
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

        public HttpResponseMessage Post([FromBody]RangedWeapon data)
        {
            try
            {
                RangedWeapon result = db.PostRangedWeapon(data);
                if (result.Id > 0)
                {
                    return new HttpResponseMessage(HttpStatusCode.Created);
                }
                else
                {
                    return new HttpResponseMessage(HttpStatusCode.BadRequest);
                }
            }
            catch(Exception e)
            {
                throw new HttpResponseException(HttpStatusCode.InternalServerError);
            }
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