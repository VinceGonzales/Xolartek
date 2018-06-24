using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Domain.Fortnite
{
    [Table("SchematicList")]
    public class Schematic
    {
        [Key]
        public virtual int Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Description { get; set; }
        public virtual decimal Damage { get; set; }
        public virtual decimal DPS { get; set; }
        public virtual decimal AttackRate { get; set; }
        public virtual decimal CritChance { get; set; }
        public virtual decimal CritDamage { get; set; }
        public virtual decimal Impact { get; set; }
        public virtual decimal Range { get; set; }
    }
}
