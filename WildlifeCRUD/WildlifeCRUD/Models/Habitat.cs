using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace WildlifeCRUD.Models
{
    public class Habitat
    {
        [Key]
        [Column("habitat_id")]
        public int HabitatId { get; set; }

        [Required]
        [Column("name")]
        public string Name { get; set; }

        [Column("description")]
        public string Description { get; set; }

        // Add navigation property for Animals table
        public virtual ICollection<Animal> Animals { get; set; }  
    }
}
