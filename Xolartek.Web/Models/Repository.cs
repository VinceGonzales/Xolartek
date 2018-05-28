﻿using Domain.Accounts;
using Domain.Fortnite;
using System.Collections.Generic;
using System.Linq;

namespace Xolartek.Web.Models
{
    public class AccountRepository : IAccountDb
    {
        private IAccountDb db;

        public AccountRepository(IAccountDb ctx)
        {
            db = ctx;
        }

        public IQueryable<User> Users
        {
            get { return db.Users; }
        }

        public IQueryable<Role> Roles
        {
            get { return db.Roles; }
        }

        public IList<UserAccount> GetUsers()
        {
            List<UserAccount> result = new List<UserAccount>();
            foreach(User usr in Users)
            {
                result.Add(new UserAccount
                {
                    UserId = usr.UserId,
                    Username = usr.Username,
                    Email = usr.Email,
                    IsApproved = usr.IsApproved,
                    CreateDate = usr.CreateDate,
                    IsLockedOut = usr.IsLockedOut,
                    Group = usr.Roles.FirstOrDefault().RoleName
                });
            }
            return result;
        }

        public IList<UserRole> GetRoles()
        {
            List<UserRole> result = new List<UserRole>();
            foreach(Role role in Roles)
            {
                result.Add(new UserRole
                {
                    RoleId = role.RoleId,
                    RoleName = role.RoleName,
                    Description = role.Description
                });
            }
            return result;
        }
    }
    public class FortniteRepository
    {
        private IFortniteDb db;

        public FortniteRepository(IFortniteDb ctx)
        {
            db = ctx;
        }

        public IList<RangedWeapon> GetRangedWeapons()
        {
            List<RangedWeapon> result = new List<RangedWeapon>();
            foreach(WeaponRange w in db.WeaponRanges)
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

                weapon.Picture = w.PictureId.HasValue ? w.PictureId.Value : 0;
                weapon.WeaponEdition = w.WeaponEditionId.HasValue ? w.WeaponEditionId.Value : 0;
                weapon.WeaponType = w.WeaponTypeId.HasValue ? w.WeaponTypeId.Value : 0;
                weapon.Rarity = w.Rarity.Id;
                weapon.Traits = w.Traits.Select(t => t.Id).ToList();
                weapon.Materials = w.Materials.Select(m => m.Id).ToList();

                result.Add(weapon);
            }
            return result;
        }

        public RangedWeapon GetRangedWeapon(int id)
        {
            RangedWeapon result = new RangedWeapon();
            WeaponRange weapon = db.WeaponRanges.FirstOrDefault(r => r.Id.Equals(id));
            if(weapon != null)
            {
                result.Id = weapon.Id;
                result.Name = weapon.Name;
                result.Description = weapon.Description;
                result.Durability = weapon.Durability;
                result.Level = weapon.Level;
                result.Stars = weapon.Stars;
                result.Damage = weapon.Damage;
                result.CritChance = weapon.CritChance;
                result.CritDamage = weapon.CritDamage;
                result.FireRate = weapon.FireRate;
                result.MagazineSize = weapon.MagazineSize;
                result.Range = weapon.Range;
                result.DurabilityPerUse = weapon.DurabilityPerUse;
                result.ReloadTime = weapon.ReloadTime;
                result.AmmoCost = weapon.AmmoCost;
                result.Impact = weapon.Impact;
                result.Picture = weapon.PictureId.HasValue ? weapon.PictureId.Value : 0;
                result.WeaponEdition = weapon.WeaponEditionId.HasValue ? weapon.WeaponEditionId.Value : 0;
                result.WeaponType = weapon.WeaponTypeId.HasValue ? weapon.WeaponTypeId.Value : 0;
                result.Rarity = weapon.Rarity.Id;
                result.Traits = weapon.Traits.Select(t => t.Id).ToList();
                result.Materials = weapon.Materials.Select(m => m.Id).ToList();
            }
            return result;
        }

        public IList<MeleeWeapon> GetMeleeWeapons()
        {
            List<MeleeWeapon> result = new List<MeleeWeapon>();
            foreach (WeaponMelee m in db.WeaponMelees)
            {
                MeleeWeapon weapon = new MeleeWeapon();
                weapon.Id = m.Id;
                weapon.Name = m.Name;
                weapon.Description = m.Description;
                weapon.Durability = m.Durability;
                weapon.Level = m.Level;
                weapon.Stars = m.Stars;
                weapon.Damage = m.Damage;
                weapon.CritChance = m.CritChance;
                weapon.CritDamage = m.CritDamage;
                weapon.FireRate = m.FireRate;
                weapon.MagazineSize = m.MagazineSize;
                weapon.Range = m.Range;
                weapon.DurabilityPerUse = m.DurabilityPerUse;
                weapon.ReloadTime = m.ReloadTime;
                weapon.AmmoCost = m.AmmoCost;
                weapon.Impact = m.Impact;

                weapon.Picture = m.PictureId.HasValue ? m.PictureId.Value : 0;
                weapon.WeaponEdition = m.WeaponEditionId.HasValue ? m.WeaponEditionId.Value : 0;
                weapon.WeaponType = m.WeaponTypeId.HasValue ? m.WeaponTypeId.Value : 0;
                weapon.Rarity = m.Rarity.Id;
                weapon.Traits = m.Traits.Select(t => t.Id).ToList();
                weapon.Materials = m.Materials.Select(x => x.Id).ToList();

                result.Add(weapon);
            }
            return result;
        }

        public IList<TrapWeapon> GetTrapWeapons()
        {
            List<TrapWeapon> result = new List<TrapWeapon>();
            foreach (WeaponTrap t in db.WeaponTraps)
            {
                TrapWeapon weapon = new TrapWeapon();
                weapon.Id = t.Id;
                weapon.Name = t.Name;
                weapon.Description = t.Description;
                weapon.Durability = t.Durability;
                weapon.Level = t.Level;
                weapon.Stars = t.Stars;
                weapon.Damage = t.Damage;
                weapon.CritChance = t.CritChance;
                weapon.CritDamage = t.CritDamage;
                weapon.FireRate = t.FireRate;
                weapon.MagazineSize = t.MagazineSize;
                weapon.Range = t.Range;
                weapon.DurabilityPerUse = t.DurabilityPerUse;
                weapon.ReloadTime = t.ReloadTime;
                weapon.AmmoCost = t.AmmoCost;
                weapon.Impact = t.Impact;

                weapon.Picture = t.PictureId.HasValue ? t.PictureId.Value : 0;
                weapon.Rarity = t.Rarity.Id;
                weapon.Traits = t.Traits.Select(x => x.Id).ToList();
                weapon.Materials = t.Materials.Select(m => t.Id).ToList();

                result.Add(weapon);
            }
            return result;
        }

        public IList<Trait> GetTraits()
        {
            List<Trait> result = new List<Trait>();
            foreach(Domain.Fortnite.Trait t in db.Traits)
            {
                Trait trait = new Trait();
                trait.Id = t.Id;
                trait.Description = t.Description;

                result.Add(trait);
            }
            return result;
        }

        public RangedWeapon PostRangedWeapon(RangedWeapon weapon)
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
            data.Picture = db.Pictures.FirstOrDefault(p => p.Id.Equals(weapon.Picture));
            data.Rarity = db.Rarities.FirstOrDefault(r => r.Id.Equals(weapon.Rarity));
            data.WeaponEdition = db.WeaponEditions.FirstOrDefault(e => e.Id.Equals(weapon.WeaponEdition));
            data.WeaponType = db.WeaponTypes.FirstOrDefault(t => t.Id.Equals(weapon.WeaponType));

            data.Traits = new List<TraitRange>();
            foreach(int id in weapon.Traits)
            {
                TraitRange trait = db.TraitRanges.FirstOrDefault(t => t.Id.Equals(id));
                data.Traits.Add(trait);
            }

            data.Materials = new List<MaterialRange>();
            foreach(int id in weapon.Materials)
            {
                MaterialRange mat = db.MaterialRanges.FirstOrDefault(m => m.Id.Equals(id));
                data.Materials.Add(mat);
            }

            weapon.Id = db.PostWeaponRange(data);

            return weapon;
        }

        public MeleeWeapon PostMeleeWeapon(MeleeWeapon weapon)
        {
            WeaponMelee data = new WeaponMelee();
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
            data.Picture = db.Pictures.FirstOrDefault(p => p.Id.Equals(weapon.Picture));
            data.Rarity = db.Rarities.FirstOrDefault(r => r.Id.Equals(weapon.Rarity));
            data.WeaponEdition = db.WeaponEditions.FirstOrDefault(e => e.Id.Equals(weapon.WeaponEdition));
            data.WeaponType = db.WeaponTypes.FirstOrDefault(t => t.Id.Equals(weapon.WeaponType));

            data.Traits = new List<TraitMelee>();
            foreach (int id in weapon.Traits)
            {
                TraitMelee trait = db.TraitMelees.FirstOrDefault(t => t.Id.Equals(id));
                data.Traits.Add(trait);
            }

            data.Materials = new List<MaterialMelee>();
            foreach (int id in weapon.Materials)
            {
                MaterialMelee mat = db.MaterialMelees.FirstOrDefault(m => m.Id.Equals(id));
                data.Materials.Add(mat);
            }

            weapon.Id = db.PostWeaponMelee(data);

            return weapon;
        }

        public TrapWeapon PostTrapWeapon(TrapWeapon weapon)
        {
            WeaponTrap data = new WeaponTrap();
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
            data.Picture = db.Pictures.FirstOrDefault(p => p.Id.Equals(weapon.Picture));
            data.Rarity = db.Rarities.FirstOrDefault(r => r.Id.Equals(weapon.Rarity));

            data.Traits = new List<TraitTrap>();
            foreach (int id in weapon.Traits)
            {
                TraitTrap trait = db.TraitTraps.FirstOrDefault(t => t.Id.Equals(id));
                data.Traits.Add(trait);
            }

            data.Materials = new List<MaterialTrap>();
            foreach (int id in weapon.Materials)
            {
                MaterialTrap mat = db.MaterialTraps.FirstOrDefault(m => m.Id.Equals(id));
                data.Materials.Add(mat);
            }

            weapon.Id = db.PostWeaponTrap(data);

            return weapon;
        }
    }
}