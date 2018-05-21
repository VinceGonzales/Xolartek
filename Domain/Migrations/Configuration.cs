namespace Domain.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Domain.Accounts.AccountContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(Domain.Accounts.AccountContext context)
        {
            if (context.Database.Exists())
            {
                context.Roles.AddOrUpdate(r => r.RoleName,
                    new Accounts.Role() { RoleName = "Administrator", Description = "Website Admin" },
                    new Accounts.Role() { RoleName = "User", Description = "Website User" },
                    new Accounts.Role() { RoleName = "Guest", Description = "Anonymous Guest" }
                );
            }
        }
    }
}
