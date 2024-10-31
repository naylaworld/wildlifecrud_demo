using WildlifeCRUD.Models;

namespace WildlifeCRUD.Models
{
    public class AnimalListViewModel
    {
        public List<Animal> Animals { get; set; }
        public int CurrentPage { get; set; }
        public int TotalPages { get; set; }
    }
}
