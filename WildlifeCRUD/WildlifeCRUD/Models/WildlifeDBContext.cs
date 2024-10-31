using Microsoft.EntityFrameworkCore;

namespace WildlifeCRUD.Models
{
    public class WildlifeDBContext : DbContext
    {
        public WildlifeDBContext(DbContextOptions<WildlifeDBContext> options) : base(options) { }

        public DbSet<Animal> Animals { get; set; }

        public DbSet<Species> Speciess { get; set; }

        public DbSet<Habitat> Habitats { get; set; }

        public DbSet<Diet> Diets { get; set; }

        public DbSet<Status> Statuss { get; set; }

        /// <summary>
        /// SQL - JOIN TABLES
        /// </summary>
        /// <param name="modelBuilder"></param>
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Tables: speciess, animals
            // Key: species_id
            modelBuilder.Entity<Animal>()
                .HasOne(a => a.Species)           // Each animal has one species
                .WithMany(s => s.Animals)         // Each species can have many animals
                .HasForeignKey(a => a.SpeciesId); // Specify the foreign key for Speciess

            // Join Tables: habitats, animals
            // Key: habitat_id
            modelBuilder.Entity<Animal>()
                .HasOne(a => a.Habitat)           // Each animal has one habitat
                .WithMany(h => h.Animals)         // Each habitat can have many animals
                .HasForeignKey(a => a.HabitatId); // Specify the foreign key for Habitats

            // Join Tables: diets, animals
            // Key: diet_id
            modelBuilder.Entity<Animal>()
                .HasOne(a => a.Diet)           // Each animal has one diet
                .WithMany(d => d.Animals)      // Each diet can have many animals
                .HasForeignKey(a => a.DietId); // Specify the foreign key for Diets

            // Join Tables: statuss, animals
            // Key: status_id
            modelBuilder.Entity<Animal>()
                .HasOne(a => a.Status)           // Each animal has one status
                .WithMany(st => st.Animals)      // Each status can have many animals
                .HasForeignKey(a => a.StatusId); // Specify the foreign key for Statuss
        }
    }
}
