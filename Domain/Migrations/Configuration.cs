namespace Domain.Migrations
{
    using Domain.Utility;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Domain.Migrations.MainDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(Domain.Migrations.MainDbContext context)
        {
            if (context.Database.Exists())
            {
                Accounts.User user = new Accounts.User()
                {
                    Username = "Admin",
                    Email = "vince.gonzales@hotmail.com",
                    Password = Crypto.HashPassword("password"),
                    IsApproved = true,
                    CreateDate = DateTime.UtcNow,
                    LastPasswordChangedDate = DateTime.UtcNow,
                    PasswordFailuresSinceLastSuccess = 0,
                    IsLockedOut = false
                };

                Accounts.Role _role = new Accounts.Role() { RoleName = "Administrator", Description = "Website Admin" };
                _role.Users = new List<Accounts.User>();
                _role.Users.Add(user);

                user.Roles = new List<Accounts.Role>();
                user.Roles.Add(_role);

                context.Roles.AddOrUpdate(r => r.RoleName,
                    _role,
                    new Accounts.Role() { RoleName = "User", Description = "Website User" },
                    new Accounts.Role() { RoleName = "Guest", Description = "Anonymous Guest" }
                );

                context.Users.AddOrUpdate(u => u.Username, user);

                context.SaveChanges();
            }
        }
    }
}
