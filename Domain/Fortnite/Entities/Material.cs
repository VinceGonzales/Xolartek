using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Domain.Fortnite
{
    public class Material : IMaterial
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public virtual int Id { get; set; }
        [Required]
        [StringLength(100)]
        public virtual string Description { get; set; }
        public int? PictureId { get; set; }
        [ForeignKey("PictureId")]
        public virtual Picture Picture { get; set; }
    }
}
