using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Domain.Fortnite
{
    public class TraitMelee : ITraitImpact
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public virtual int Id { get; set; }
        public virtual string Impact { get; set; }
        public virtual Trait Trait { get; set; }
        public virtual WeaponMelee  Melee { get; set; }
    }
}
