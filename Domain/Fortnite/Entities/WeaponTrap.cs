using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Domain.Fortnite
{
    public class WeaponTrap : IWeaponTrap
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
        [StringLength(100)]
        public virtual string Range { get; set; }
        [StringLength(100)]
        public virtual string DurabilityPerUse { get; set; }
        [StringLength(100)]
        public virtual string ReloadTime { get; set; }
        [StringLength(100)]
        public virtual string Impact { get; set; }
        public virtual ICollection<TraitTrap> Traits { get; set; }
        public virtual ICollection<MaterialTrap> Materials { get; set; }
        public int? PictureId { get; set; }
        [ForeignKey("PictureId")]
        public virtual Picture Picture { get; set; }
        public int RarityId { get; set; }
        [ForeignKey("RarityId")]
        public virtual Rarity Rarity { get; set; }
    }
}
