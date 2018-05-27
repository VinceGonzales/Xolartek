using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Domain.Accounts
{
    public class AccountDb : DbContext, IAccountDb
    {
        public AccountDb() : base("DefaultConnectionString")
        { }

        public DbSet<User> Users { get; set; }
        public DbSet<Role> Roles { get; set; }

        IQueryable<User> IAccountDb.Users
        {
            get { return Users; }
        }

        IQueryable<Role> IAccountDb.Roles
        {
            get { return Roles; }
        }
    }
}
