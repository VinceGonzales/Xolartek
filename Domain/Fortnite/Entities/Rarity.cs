using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Domain.Fortnite
{
    public class Rarity : ITrait
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public virtual int Id { get; set; }
        [Required]
        [StringLength(100)]
        public virtual string Description { get; set; }
    }
}
