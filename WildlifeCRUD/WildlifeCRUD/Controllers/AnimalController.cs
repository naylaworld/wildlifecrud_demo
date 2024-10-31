using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WildlifeCRUD.Models;

namespace WildlifeCRUD.Controllers
{
    public class AnimalController : Controller
    {
        // Database connection.
        private readonly WildlifeDBContext _dbContext;

        public AnimalController(WildlifeDBContext dBContext)
        {
            // Get the active database connection and assign.
            _dbContext = dBContext;
        }

        /// <summary>
        /// Get All Records From Table
        /// </summary>
        /// <returns>List<Models.Animal></returns>
	    public async Task<IActionResult> GetList()
        {
            var animals = await _dbContext.Animals.ToListAsync();

            return View(animals);
        }

        /// <summary>
        /// Get The Primary Key Record
        /// </summary>
        /// <param name="int">animalId</param>
        /// <returns>Models.Animal</returns>
        public async Task<IActionResult> GetRecord(int? animalId)
        {
            if (animalId == null)
            {
                return BadRequest();
            }

            var animal = await _dbContext.Animals.FirstOrDefaultAsync(animal => animal.AnimalId == animalId);
            if (animal == null)
            {
                return NotFound();
            }

            return Ok(animal);
        }

        /// ----- ----- ----- ----- -----

        [HttpGet]
        public async Task<IActionResult> List(int pageNumber = 1, int pageSize = 10)
        {
            // Get the total count of records
            var totalAnimalsCount = await _dbContext.Animals.CountAsync();

            // Retrieve the animals for the current page
            var animals = await _dbContext.Animals
                .Skip((pageNumber - 1) * pageSize)
                .Take(pageSize)
                .Include(a => a.Species) // Include the Species table
                .Include(a => a.Habitat) // Include the Habitat table
                .Include(a => a.Diet)    // Include the Diet table
                .Include(a => a.Status)  // Include the Diet table
                .ToListAsync();

            // Create a view model to pass data to the view
            var viewModel = new AnimalListViewModel
            {
                Animals = animals,
                CurrentPage = pageNumber,
                TotalPages = (int)Math.Ceiling((double)totalAnimalsCount / pageSize)
            };

            return View(viewModel);
        }

        [HttpGet]
        public async Task<IActionResult> Add()
        {
            ViewBag.SpeciesList = await _dbContext.Speciess.ToListAsync();
            ViewBag.HabitatList = await _dbContext.Habitats.ToListAsync();
            ViewBag.DietList = await _dbContext.Diets.ToListAsync();
            ViewBag.StatusList = await _dbContext.Statuss.ToListAsync();

            return View();
        }

        [HttpPost]
        public IActionResult Add(Animal model)
        {
            try
            {
                if (model != null)
                {
                    // Add
                    _dbContext.Animals.Add(model);
                    _dbContext.SaveChanges();
                }
                else
                {
                    // Return 400
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError);
            }

            // Redirect
            return RedirectToAction("List");
        }

        [HttpGet]
        public async Task<IActionResult> Edit(int? animalId)
        {
            if (animalId == null) { return BadRequest(); }

            var animal = await _dbContext.Animals.FirstOrDefaultAsync(animal => animal.AnimalId == animalId);
            if (animal == null) { return NotFound(); }

            ViewBag.SpeciesList = await _dbContext.Speciess.ToListAsync();
            ViewBag.HabitatList = await _dbContext.Habitats.ToListAsync();
            ViewBag.DietList = await _dbContext.Diets.ToListAsync();
            ViewBag.StatusList = await _dbContext.Statuss.ToListAsync();

            return View(animal);
        }

        [HttpPost]
        public IActionResult Edit(Animal model)
        {
            try
            {
                if (model != null && model.AnimalId > 0)
                {
                    // Edit
                    _dbContext.Animals.Update(model);
                    _dbContext.SaveChanges();
                }
                else
                {
                    // Return 400
                    return BadRequest();
                }
            } catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError);
            }
            
            // Redirect
            return RedirectToAction("List");
        }

        [HttpGet]
        public IActionResult Delete(int? animalId)
        {
            try
            {
                if (animalId == null)
                {
                    // Return 400
                    return BadRequest();
                }

                var animal = _dbContext.Animals.FirstOrDefault(animal => animal.AnimalId == animalId);
                if (animal == null)
                {
                    // Return 404
                    return NotFound();
                }

                // Delete
                _dbContext.Animals.Remove(animal);
                _dbContext.SaveChangesAsync();
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError);
            }

            // Redirect
            return RedirectToAction("List");
        }
    }
}