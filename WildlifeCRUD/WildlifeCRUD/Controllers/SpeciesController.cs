using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WildlifeCRUD.Models;

namespace WildlifeCRUD.Controllers
{
    public class SpeciesController : Controller
    {
        // Database connection.
        private readonly WildlifeDBContext _dbContext;

        public SpeciesController(WildlifeDBContext dBContext)
        {
            // Get the active database connection and assign.
            _dbContext = dBContext;
        }

        /// ----- ----- ----- ----- -----

        [HttpGet]
        public async Task<IActionResult> List()
        {
            var speciesList = await _dbContext.Speciess.ToListAsync();

            return View(speciesList);
        }
    }
}
