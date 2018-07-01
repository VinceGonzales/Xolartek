using System.Collections.Generic;
using System.Runtime.Serialization;

namespace Xolartek.Service.DTO
{
    [DataContract]
    public class RangedWeapon
    {
        [DataMember] public int Id { get; set; }
        [DataMember] public string Name { get; set; }
        [DataMember] public string Description { get; set; }
        [DataMember] public int Durability { get; set; }
        [DataMember] public int Level { get; set; }
        [DataMember] public int Stars { get; set; }
        [DataMember] public string Damage { get; set; }
        [DataMember] public decimal DPS { get; set; }
        [DataMember] public string CritChance { get; set; }
        [DataMember] public string CritDamage { get; set; }
        [DataMember] public string FireRate { get; set; }
        [DataMember] public int MagazineSize { get; set; }
        [DataMember] public string Range { get; set; }
        [DataMember] public string DurabilityPerUse { get; set; }
        [DataMember] public string ReloadTime { get; set; }
        [DataMember] public int AmmoCost { get; set; }
        [DataMember] public string Impact { get; set; }
        [DataMember] public string Picture { get; set; }
        [DataMember] public int WeaponEdition { get; set; }
        [DataMember] public int WeaponTypeId { get; set; }
        [DataMember] public string WeaponType { get; set; }
        [DataMember] public int Rarity { get; set; }
        [DataMember] public IList<TraitImpact> Traits { get; set; }
        [DataMember] public IList<MaterialCost> Materials { get; set; }
    }
}
