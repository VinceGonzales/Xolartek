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
        public DbSet<MaterialMelee> MaterialMelees { get; set; }
        public DbSet<MaterialRange> MaterialRanges { get; set; }
        public DbSet<MaterialTrap> MaterialTraps { get; set; }
        public DbSet<Trait> Traits { get; set; }
        public DbSet<TraitMelee> TraitMelees { get; set; }
        public DbSet<TraitRange> TraitRanges { get; set; }
        public DbSet<TraitTrap> TraitTraps { get; set; }
        public DbSet<WeaponMelee> WeaponMelees { get; set; }
        public DbSet<WeaponRange> WeaponRanges { get; set; }
        public DbSet<WeaponTrap> WeaponTraps { get; set; }

        IQueryable<Material> IFortniteDb.Materials
        {
            get { return Materials; }
        }

        IQueryable<MaterialMelee> IFortniteDb.MaterialMelees
        {
            get { return MaterialMelees; }
        }

        IQueryable<MaterialRange> IFortniteDb.MaterialRanges
        {
            get { return MaterialRanges; }
        }

        IQueryable<MaterialTrap> IFortniteDb.MaterialTraps
        {
            get { return MaterialTraps; }
        }

        IQueryable<Trait> IFortniteDb.Traits
        {
            get { return Traits; }
        }

        IQueryable<TraitMelee> IFortniteDb.TraitMelees
        {
            get { return TraitMelees; }
        }

        IQueryable<TraitRange> IFortniteDb.TraitRanges
        {
            get { return TraitRanges; }
        }

        IQueryable<TraitTrap> IFortniteDb.TraitTraps
        {
            get { return TraitTraps; }
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
