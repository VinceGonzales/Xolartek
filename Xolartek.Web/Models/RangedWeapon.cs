using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

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
        public decimal DPS { get; set; }
        [Display(Name = "Critical Chance")]
        public string CritChance { get; set; }
        [Display(Name = "Critical Damage")]
        public string CritDamage { get; set; }
        [Display(Name = "Fire Rate")]
        public string FireRate { get; set; }
        [Display(Name = "Magazine Size")]
        public int MagazineSize { get; set; }
        public string Range { get; set; }
        [Display(Name = "Durability/Use")]
        public string DurabilityPerUse { get; set; }
        [Display(Name = "Reload Time")]
        public string ReloadTime { get; set; }
        [Display(Name = "Ammo Cost")]
        public int AmmoCost { get; set; }
        public string Impact { get; set; }
        [Display(Name = "Picture URL [~/]")]
        public string Picture { get; set; }
        [Display(Name = "Edition")]
        public int WeaponEdition { get; set; }
        [Display(Name = "Type")]
        public int WeaponType { get; set; }
        public int Rarity { get; set; }
        public IList<TraitImpact> Traits { get; set; }
        public IList<MaterialCost> Materials { get; set; }
    }
}