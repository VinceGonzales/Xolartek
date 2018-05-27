using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Domain.Fortnite
{
    public class FortniteDb : DbContext, IFortniteDb
    {
        public FortniteDb() : base("DefaultConnectionString")
        { }

        public DbSet<Material> Materials { get; set; }
        public DbSet<MaterialCost> MaterialCosts { get; set; }
        public DbSet<Trait> Traits { get; set; }
        public DbSet<TraitImpact> TraitImpacts { get; set; }
        public DbSet<WeaponMelee> WeaponMelees { get; set; }
        public DbSet<WeaponRange> WeaponRanges { get; set; }
        public DbSet<WeaponTrap> WeaponTraps { get; set; }

        IQueryable<Material> IFortniteDb.Materials
        {
            get { return Materials; }
        }

        IQueryable<MaterialCost> IFortniteDb.MaterialCosts
        {
            get { return MaterialCosts; }
        }

        IQueryable<Trait> IFortniteDb.Traits
        {
            get { return Traits; }
        }

        IQueryable<TraitImpact> IFortniteDb.TraitImpacts
        {
            get { return TraitImpacts; }
        }

        IQueryable<WeaponMelee> IFortniteDb.WeaponMelees
        {
            get { return WeaponMelees; }
        }

        IQueryable<WeaponRange> IFortniteDb.WeaponRanges
        {
            get { return WeaponRanges; }
        }

        IQueryable<WeaponTrap> IFortniteDb.WeaponTraps
        {
            get { return WeaponTraps; }
        }
    }
}
