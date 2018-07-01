using Domain;
using Domain.Fortnite;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xolartek.Service.DTO;

namespace Xolartek.Service.Repository
{
    public class Fortnitedb : IDisposable
    {
        private FortniteDb db;

        public Fortnitedb()
        {
            db = new FortniteDb();
        }

        public IList<RangedWeapon> GetRangedWeapons()
        {
            List<RangedWeapon> result = new List<RangedWeapon>();
            foreach (WeaponRange w in db.WeaponRanges)
            {
                RangedWeapon weapon = new RangedWeapon();
                weapon.Id = w.Id;
                weapon.Name = w.Name;
                weapon.Description = w.Description;
                weapon.Durability = w.Durability;
                weapon.Level = w.Level;
                weapon.Stars = w.Stars;
                weapon.Damage = w.Damage;
                weapon.CritChance = w.CritChance;
                weapon.CritDamage = w.CritDamage;
                weapon.FireRate = w.FireRate;
                weapon.MagazineSize = w.MagazineSize;
                weapon.Range = w.Range;
                weapon.DurabilityPerUse = w.DurabilityPerUse;
                weapon.ReloadTime = w.ReloadTime;
                weapon.AmmoCost = w.AmmoCost;
                weapon.Impact = w.Impact;

                weapon.DPS = GetDPS(weapon.Damage, weapon.FireRate);

                weapon.Picture = w.PictureId.HasValue ? w.Picture.Source : "";
                weapon.WeaponEdition = w.WeaponEditionId.HasValue ? w.WeaponEditionId.Value : 0;

                if (w.WeaponTypeId.HasValue)
                {
                    weapon.WeaponTypeId = w.WeaponTypeId.Value;
                    weapon.WeaponType = w.WeaponType.Description;
                }
                else
                {
                    weapon.WeaponTypeId = 0;
                }

                weapon.Rarity = w.Rarity.Id;
                weapon.Traits = w.Traits.Select(t => new TraitImpact(t.Id, t.Trait.Description, t.Impact)).ToList();
                weapon.Materials = w.Materials.Select(m => new MaterialCost(m.Id, m.Material.Description, m.Cost)).ToList();

                result.Add(weapon);
            }
            return result;
        }

        public RangedWeapon GetRangedWeapon(int id)
        {
            RangedWeapon result = new RangedWeapon();
            WeaponRange weapon = db.WeaponRanges.FirstOrDefault(r => r.Id.Equals(id));
            if (weapon != null)
            {
                result.Id = weapon.Id;
                result.Name = weapon.Name;
                result.Description = weapon.Description;
                result.Durability = weapon.Durability;
                result.Level = weapon.Level;
                result.Stars = weapon.Stars;
                result.Damage = weapon.Damage;
                result.DPS = GetDPS(weapon.Damage, weapon.FireRate);
                result.CritChance = weapon.CritChance;
                result.CritDamage = weapon.CritDamage;
                result.FireRate = weapon.FireRate;
                result.MagazineSize = weapon.MagazineSize;
                result.Range = weapon.Range;
                result.DurabilityPerUse = weapon.DurabilityPerUse;
                result.ReloadTime = weapon.ReloadTime;
                result.AmmoCost = weapon.AmmoCost;
                result.Impact = weapon.Impact;
                result.Picture = weapon.PictureId.HasValue ? weapon.Picture.Source : "";
                result.WeaponEdition = weapon.WeaponEditionId.HasValue ? weapon.WeaponEditionId.Value : 0;
                if (weapon.WeaponTypeId.HasValue)
                {
                    result.WeaponTypeId = weapon.WeaponTypeId.Value;
                    result.WeaponType = weapon.WeaponType.Description;
                }
                else
                {
                    result.WeaponTypeId = 0;
                }
                result.Rarity = weapon.Rarity.Id;
                result.Traits = weapon.Traits.Select(t => new TraitImpact(t.Id, t.Trait.Description, t.Impact)).ToList();
                result.Materials = weapon.Materials.Select(m => new MaterialCost(m.Id, m.Material.Description, m.Cost)).ToList();
            }
            return result;
        }

        public void PostRangedWeapon(RangedWeapon weapon)
        {
            WeaponRange data = new WeaponRange();
            data.Name = weapon.Name;
            data.Description = weapon.Description;
            data.Durability = weapon.Durability;
            data.Level = weapon.Level;
            data.Stars = weapon.Stars;
            data.Damage = weapon.Damage;
            data.CritChance = weapon.CritChance;
            data.CritDamage = weapon.CritDamage;
            data.FireRate = weapon.FireRate;
            data.MagazineSize = weapon.MagazineSize;
            data.Range = weapon.Range;
            data.DurabilityPerUse = weapon.DurabilityPerUse;
            data.ReloadTime = weapon.ReloadTime;
            data.AmmoCost = weapon.AmmoCost;
            data.Impact = weapon.Impact;
            data.Rarity = db.Rarities.FirstOrDefault(r => r.Id.Equals(weapon.Rarity));
            data.WeaponEdition = db.WeaponEditions.FirstOrDefault(e => e.Id.Equals(weapon.WeaponEdition));
            data.WeaponType = db.WeaponTypes.FirstOrDefault(t => t.Id.Equals(weapon.WeaponTypeId));

            Domain.Picture pict = db.Pictures.FirstOrDefault(p => p.Alternate.Equals(weapon.Name));
            if (pict != null)
            {
                data.Picture = pict;
            }
            else
            {
                pict = new Picture() { Source = weapon.Picture, CSSClass = "img-fluid", Alternate = weapon.Name };
                data.Picture = pict;
            }

            data.Traits = new List<TraitRange>();
            foreach (TraitImpact ti in weapon.Traits)
            {
                TraitRange trait = db.TraitRanges.FirstOrDefault(t => t.Id.Equals(ti.Id));
                if (trait == null)
                {
                    trait = new TraitRange();
                    trait.Impact = ti.Impact;
                    trait.Trait = db.Traits.FirstOrDefault(t => t.Description == ti.Description);
                }
                data.Traits.Add(trait);
            }

            data.Materials = new List<MaterialRange>();
            foreach (MaterialCost mc in weapon.Materials)
            {
                MaterialRange mat = db.MaterialRanges.FirstOrDefault(m => m.Id.Equals(mc.Id));
                data.Materials.Add(mat);
            }

            weapon.Id = db.PostWeaponRange(data);
        }

        private decimal GetDPS(string damage, string firerate)
        {
            decimal dps = 0.0M;
            decimal dmg = 0.0M;
            decimal rate = 0.0M;
            if (decimal.TryParse(damage, out dmg) && decimal.TryParse(firerate, out rate))
            {
                dps = dmg * rate;
            }
            return decimal.Round(dps, 2);
        }

        #region IDisposable

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    (db as DbContext).Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        #endregion IDisposable
    }
}
