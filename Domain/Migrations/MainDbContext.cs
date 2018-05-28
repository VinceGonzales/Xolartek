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
        public DbSet<MaterialMelee> MaterialMelees { get; set; }
        public DbSet<MaterialRange> MaterialRanges { get; set; }
        public DbSet<MaterialTrap> MaterialTraps { get; set; }
        public DbSet<Picture> Pictures { get; set; }
        public DbSet<Rarity> Rarities { get; set; }
        public DbSet<Trait> Traits { get; set; }
        public DbSet<TraitMelee> TraitMelees { get; set; }
        public DbSet<TraitRange> TraitRanges { get; set; }
        public DbSet<TraitTrap> TraitTraps { get; set; }
        public DbSet<WeaponMelee> WeaponMelees { get; set; }
        public DbSet<WeaponRange> WeaponRanges { get; set; }
        public DbSet<WeaponTrap> WeaponTraps { get; set; }
        public DbSet<WeaponType> WeaponTypes { get; set; }
        public DbSet<WeaponEdition> WeaponEditions { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //modelBuilder.Configurations.Add(new MeleeEntityConfiguration());
            //modelBuilder.Configurations.Add(new RangeEntityConfiguration());
            //modelBuilder.Configurations.Add(new TrapEntityConfiguration());
        }
    }
}
