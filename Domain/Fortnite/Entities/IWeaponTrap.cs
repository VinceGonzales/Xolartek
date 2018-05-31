using System.Collections.Generic;

namespace Domain.Fortnite
{
    public interface IWeaponTrap : ISchematic
    {
        int Level { get; set; }
        int Stars { get; set; }
        string Damage { get; set; }
        string CritChance { get; set; }
        string CritDamage { get; set; }
        string FireRate { get; set; }
        string Range { get; set; }
        string DurabilityPerUse { get; set; }
        string ReloadTime { get; set; }
        string Impact { get; set; }
        ICollection<TraitTrap> Traits { get; set; }
        ICollection<MaterialTrap> Materials { get; set; }
        int? PictureId { get; set; }
        Picture Picture { get; set; }
    }
}
