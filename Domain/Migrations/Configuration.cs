namespace Domain.Migrations
{
    using Domain.Utility;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Domain.Accounts.AccountDb>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(Domain.Accounts.AccountDb context)
        {
            if (context.Database.Exists())
            {
                context.Roles.AddOrUpdate(r => r.RoleName,
                    new Accounts.Role() { RoleName = "Administrator", Description = "Website Admin" },
                    new Accounts.Role() { RoleName = "User", Description = "Website User" },
                    new Accounts.Role() { RoleName = "Guest", Description = "Anonymous Guest" }
                );

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

                context.Users.AddOrUpdate(u => u.Username, user);

                context.SaveChanges();

                context.Roles.FirstOrDefault(r => r.RoleName.Equals("Administrator")).Users
                    .Add(context.Users.FirstOrDefault(r => r.Username.Equals("Admin")));

                context.SaveChanges();
            }
        }
    }
}
