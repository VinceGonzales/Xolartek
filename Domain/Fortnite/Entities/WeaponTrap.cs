﻿using System.Collections.Generic;
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
        public virtual string Name { get; set; }
        public virtual string Description { get; set; }
        public virtual int Durability { get; set; }
        public virtual int Level { get; set; }
        public virtual int Stars { get; set; }
        public virtual string Damage { get; set; }
        public virtual string CritChance { get; set; }
        public virtual string CritDamage { get; set; }
        public virtual string FireRate { get; set; }
        public virtual string MagazineSize { get; set; }
        public virtual string Range { get; set; }
        public virtual string DurabilityPerUse { get; set; }
        public virtual string ReloadTime { get; set; }
        public virtual string Impact { get; set; }
        public virtual ICollection<TraitTrap> Traits { get; set; }
        public virtual ICollection<MaterialTrap> Materials { get; set; }
        public int? PictureId { get; set; }
        [ForeignKey("PictureId")]
        public virtual Picture Picture { get; set; }
        public virtual Rarity Rarity { get; set; }
    }
}
