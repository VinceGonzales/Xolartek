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

        #region dbsets
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
        public DbSet<Schematic> Schematics { get; set; }
        #endregion dbsets

        public int PostWeaponRange(WeaponRange weapon)
        {
            this.WeaponRanges.Add(weapon);
            this.SaveChanges();
            return weapon.Id;
        }

        public int PostWeaponMelee(WeaponMelee weapon)
        {
            this.WeaponMelees.Add(weapon);
            this.SaveChanges();
            return weapon.Id;
        }

        public int PostWeaponTrap(WeaponTrap weapon)
        {
            this.WeaponTraps.Add(weapon);
            this.SaveChanges();
            return weapon.Id;
        }

        public void UpdateWeaponRange(WeaponRange weapon)
        {
            WeaponRange result = this.WeaponRanges.Find(weapon.Id);
            this.Entry(result).CurrentValues.SetValues(weapon);
            this.SaveChanges();
        }

        public void UpdateWeaponMelee(WeaponMelee weapon)
        {
            WeaponMelee result = this.WeaponMelees.Find(weapon.Id);
            this.Entry(result).CurrentValues.SetValues(weapon);
            this.SaveChanges();
        }

        public void UpdateWeaponTrap(WeaponTrap weapon)
        {
            WeaponTrap result = this.WeaponTraps.Find(weapon.Id);
            this.Entry(result).CurrentValues.SetValues(weapon);
            this.SaveChanges();
        }

        #region Queryables
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

        IQueryable<Picture> IFortniteDb.Pictures
        {
            get { return Pictures; }
        }

        IQueryable<Rarity> IFortniteDb.Rarities
        {
            get { return Rarities; }
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

        IQueryable<WeaponType> IFortniteDb.WeaponTypes
        {
            get { return WeaponTypes; }
        }

        IQueryable<WeaponEdition> IFortniteDb.WeaponEditions
        {
            get { return WeaponEditions; }
        }

        IQueryable<Schematic> IFortniteDb.Schematics
        {
            get { return Schematics; }
        }
        #endregion Queryables
    }
}
