using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WildlifeCRUD.Models;

namespace WildlifeCRUD.Controllers
{
    public class HabitatController : Controller
    {
        // Database connection.
        private readonly WildlifeDBContext _dbContext;

        public HabitatController(WildlifeDBContext dBContext)
        {
            // Get the active database connection and assign.
            _dbContext = dBContext;
        }

        /// ----- ----- ----- ----- -----

        [HttpGet]
        public async Task<IActionResult> List()
        {
            var habitatList = await _dbContext.Habitats.ToListAsync();

            return View(habitatList);
        }
    }
}
