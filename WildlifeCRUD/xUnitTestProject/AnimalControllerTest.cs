using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WildlifeCRUD.Controllers;
using WildlifeCRUD.Models;

namespace xUnitTestProject
{
    public class AnimalControllerTest
    {
        private readonly AnimalController _controller;
        private readonly WildlifeDBContext _dbContext;

        public AnimalControllerTest()
        {
            // MSSQL DB Connection
            var options = new DbContextOptionsBuilder<WildlifeDBContext>()
                .UseSqlServer("Server=CrayXi-Windows\\SQLEXPRESS;Database=wildlife2;User Id=wildlife-admin;Password=master;TrustServerCertificate=True;")
                .Options;

            _dbContext = new WildlifeDBContext(options);
            _controller = new AnimalController(_dbContext);
        }

        [Fact]
        public async void GeRecordTestStatus400()
        {
            // Act
            var result = await _controller.GetRecord(null);

            // Assert
            if (result is BadRequestResult badRequestResult)
            {
                // Check if the status code is 400
                Assert.Equal(StatusCodes.Status400BadRequest, badRequestResult.StatusCode);
            }
            else
            {
                // Fail
                Assert.True(false, "Expected BadRequestResult");
            }
        }

        [Fact]
        public async void GeRecordTestStatus404()
        {
            // Act
            var result = await _controller.GetRecord(999);

            // Assert
            if (result is NotFoundResult notFoundResult)
            {
                // Check if the status code is 404
                Assert.Equal(StatusCodes.Status404NotFound, notFoundResult.StatusCode);
            }
            else
            {
                // Fail
                Assert.True(false, "Expected NotFoundResult");
            }
        }

        [Fact]
        public async void GeRecordTestAnimal()
        {
            // Act
            var result = await _controller.GetRecord(10);

            // Assert
            if (result is OkObjectResult okResult)
            {
                var animal = okResult.Value as Animal;
                Assert.NotNull(animal);
            }
            else
            {
                // Fail
                Assert.True(false, "Expected NotFoundResult");
            }
        }

    }
}