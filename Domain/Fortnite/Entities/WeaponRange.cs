using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Domain.Fortnite
{
    public class WeaponRange : IWeaponRange
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public virtual int Id { get; set; }
        [Required]
        [StringLength(100)]
        public virtual string Name { get; set; }
        public virtual string Description { get; set; }
        public virtual int Durability { get; set; }
        public virtual int Level { get; set; }
        public virtual int Stars { get; set; }
        [StringLength(100)]
        public virtual string Damage { get; set; }
        [StringLength(100)]
        public virtual string CritChance { get; set; }
        [StringLength(100)]
        public virtual string CritDamage { get; set; }
        [StringLength(100)]
        public virtual string FireRate { get; set; }
        public virtual int MagazineSize { get; set; }
        [StringLength(100)]
        public virtual string Range { get; set; }
        [StringLength(100)]
        public virtual string DurabilityPerUse { get; set; }
        [StringLength(100)]
        public virtual string ReloadTime { get; set; }
        public virtual int AmmoCost { get; set; }
        [StringLength(100)]
        public virtual string Impact { get; set; }
        public virtual ICollection<TraitRange> Traits { get; set; }
        public virtual ICollection<MaterialRange> Materials { get; set; }
        public int? PictureId { get; set; }
        [ForeignKey("PictureId")]
        public virtual Picture Picture { get; set; }
        public int? WeaponEditionId { get; set; }
        [ForeignKey("WeaponEditionId")]
        public virtual WeaponEdition WeaponEdition { get; set; }
        public int? WeaponTypeId { get; set; }
        [ForeignKey("WeaponTypeId")]
        public virtual WeaponType WeaponType { get; set; }
        public int RarityId { get; set; }
        [ForeignKey("RarityId")]
        public virtual Rarity Rarity { get; set; }
    }
}
