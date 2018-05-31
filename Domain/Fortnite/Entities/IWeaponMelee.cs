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
        string DurabilityPerUse { get; set; }
        string Impact { get; set; }
        ICollection<TraitMelee> Traits { get; set; }
        ICollection<MaterialMelee> Materials { get; set; }
        int? PictureId { get; set; }
        Picture Picture { get; set; }
        int? WeaponEditionId { get; set; }
        WeaponEdition WeaponEdition { get; set; }
        int? WeaponTypeId { get; set; }
        WeaponType WeaponType { get; set; }
    }
}
