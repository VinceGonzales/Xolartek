using Domain.Accounts;
using Domain.Fortnite;
using System.Data.Entity;

namespace Domain.Migrations
{
    public class MainDbContext : DbContext
    {
        public MainDbContext() : base("DefaultConnectionString")
        { }

        public DbSet<User> Users { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<Material> Materials { get; set; }
        public DbSet<MaterialCost> MaterialCosts { get; set; }
        public DbSet<Trait> Traits { get; set; }
        public DbSet<TraitImpact> TraitImpacts { get; set; }
        public DbSet<WeaponMelee> WeaponMelees { get; set; }
        public DbSet<WeaponRange> WeaponRanges { get; set; }
        public DbSet<WeaponTrap> WeaponTraps { get; set; }
    }
}
