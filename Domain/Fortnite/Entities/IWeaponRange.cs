using System.Collections.Generic;

namespace Domain.Fortnite
{
    public interface IWeaponRange : ISchematic
    {
        int Level { get; set; }
        int Stars { get; set; }
        string Damage { get; set; }
        string CritChance { get; set; }
        string CritDamage { get; set; }
        string FireRate { get; set; }
        int MagazineSize { get; set; }
        string Range { get; set; }
        string DurabilityPerUse { get; set; }
        string ReloadTime { get; set; }
        int AmmoCost { get; set; }
        string Impact { get; set; }
        ICollection<TraitRange> Traits { get; set; }
        ICollection<MaterialRange> Materials { get; set; }
        int? PictureId { get; set; }
        Picture Picture { get; set; }
        int? WeaponEditionId { get; set; }
        WeaponEdition WeaponEdition { get; set; }
        int? WeaponTypeId { get; set; }
        WeaponType WeaponType { get; set; }
    }
}
