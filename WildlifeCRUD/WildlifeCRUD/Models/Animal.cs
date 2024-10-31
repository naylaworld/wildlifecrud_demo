using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WildlifeCRUD.Models
{
    public class Animal
    {
        [Key]
        [Column("animal_id")]
        public int AnimalId { get; set; }

        [Required]
        [Column("name")]
        public string Name { get; set; }

        [Required]
        [Column("species_id")]
        public int SpeciesId { get; set; }

        [DataType(DataType.Date)]
        [Column("date_of_birth")]
        public DateTime? DateOfBirth { get; set; }

        [Required]
        [Column("habitat_id")]
        public int HabitatId { get; set; }

        [Required]
        [Column("diet_id")]
        public int DietId { get; set; }

        [Required]
        [Column("status_id")]
        public int StatusId { get; set; }

        [DataType(DataType.Date)]
        [Column("arrival_date")]
        public DateTime? ArrivalDate { get; set; }

        // Navigation property to Species
        public virtual Species Species { get; set; }

        // Navigation property to Habitat
        public virtual Habitat Habitat { get; set; }

        // Navigation property to Diet
        public virtual Diet Diet { get; set; }

        // Navigation property to Status
        public virtual Status Status { get; set; }
    }
}
