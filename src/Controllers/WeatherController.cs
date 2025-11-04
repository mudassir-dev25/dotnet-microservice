using Microsoft.AspNetCore.Mvc;
using Systemservice.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherController : ControllerBase
    {
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new List<string> { "Sunny", "Cloudy", "Rainy" };
        }
    }
}