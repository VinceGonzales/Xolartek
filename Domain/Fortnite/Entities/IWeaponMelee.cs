﻿using System.Collections.Generic;

namespace Domain.Fortnite
{
    public interface IWeaponMelee : ISchematic
    {
        int Level { get; set; }
        int Stars { get; set; }
        string Damage { get; set; }
        string CritChance { get; set; }
        string CritDamage { get; set; }
        string FireRate { get; set; }
        string MagazineSize { get; set; }
        string Range { get; set; }
        string DurabilityPerUse { get; set; }
        string ReloadTime { get; set; }
        string AmmoCost { get; set; }
        string Impact { get; set; }
        ICollection<TraitMelee> Traits { get; set; }
        ICollection<MaterialMelee> Materials { get; set; }
        Picture Picture { get; set; }
    }
}
