using Domain.Accounts;
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
        private AccountDb db;

        public ServiceController()
        {
            db = new AccountDb();
            db.Configuration.ProxyCreationEnabled = false;
        }

        public IEnumerable<string> Get()
        {
            return db.Users.Select(u => u.Username).ToList();
        }

        public string Get(int id)
        {
            return "value";
        }

        public string Get(string id)
        {
            if (!string.IsNullOrEmpty(id))
            {
                return db.Users.Where(u => u.UserId.Equals(id)).FirstOrDefault().Username;
            }
            else
            {
                return "invalid id";
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