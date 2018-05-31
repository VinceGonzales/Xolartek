﻿using System.Collections.Generic;

namespace Xolartek.Web.Models
{
    public class RangedWeapon
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Durability { get; set; }
        public int Level { get; set; }
        public int Stars { get; set; }
        public string Damage { get; set; }
        public string CritChance { get; set; }
        public string CritDamage { get; set; }
        public string FireRate { get; set; }
        public int MagazineSize { get; set; }
        public string Range { get; set; }
        public string DurabilityPerUse { get; set; }
        public string ReloadTime { get; set; }
        public int AmmoCost { get; set; }
        public string Impact { get; set; }
        public int Picture { get; set; }
        public int WeaponEdition { get; set; }
        public int WeaponType { get; set; }
        public int Rarity { get; set; }
        public IList<int> Traits { get; set; }
        public IList<int> Materials { get; set; }
    }
}