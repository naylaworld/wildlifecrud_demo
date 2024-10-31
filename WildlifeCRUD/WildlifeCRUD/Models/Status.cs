using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace WildlifeCRUD.Models
{
    public class Status
    {
        [Key]
        [Column("status_id")]
        public int StatusId { get; set; }

        [Required]
        [Column("name")]
        public string Name { get; set; }

        [Column("description")]
        public string Description { get; set; }

        // Add navigation property for Animals table
        public virtual ICollection<Animal> Animals { get; set; }
    }
}
