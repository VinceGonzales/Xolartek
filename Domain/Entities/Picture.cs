using System.ComponentModel.DataAnnotations;

namespace Domain
{
    public class Picture
    {
        [Key]
        public virtual int Id { get; set; }
        [Required]
        public virtual string Source { get; set; }
        public virtual string CSSClass { get; set; }
        public virtual string Alternate { get; set; }
    }
}
