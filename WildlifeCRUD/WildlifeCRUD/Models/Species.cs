using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WildlifeCRUD.Models
{
    public class Species
    {
        [Key]
        [Column("species_id")]
        public int SpeciesId { get; set; }

        [Required]
        [Column("name")]
        public string Name { get; set; }

        [Column("description")]
        public string Description { get; set; }

        // Add navigation property for Animals table
        public virtual ICollection<Animal> Animals { get; set; }
    }
}
