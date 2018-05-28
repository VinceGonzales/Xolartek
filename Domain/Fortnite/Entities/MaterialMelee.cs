﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Domain.Fortnite
{
    public class MaterialMelee : IMaterialCost
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public virtual int Id { get; set; }
        public virtual int Cost { get; set; }
        public virtual Material Material { get; set; }
        public virtual WeaponMelee Melee { get; set; }
    }
}
