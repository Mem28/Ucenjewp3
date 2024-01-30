using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("E02")]
    public class E02VarijableTipovipodatakaOperatori : ControllerBase
    {


        //ovdjee počinje ruta
        [HttpGet]
        [Route("zad1")]
        public int Zad1()
        {
            return int.MaxValue;
        }
        //ovdje završava ruta


        //ovdjee počinje ruta
        [HttpGet]
        [Route("zad2")]
        public float Zad2(int a, int b)
        {
            return a / (float)b;
        }
        //ovdje završava ruta




        //ovdjee počinje ruta
        [HttpGet]
        [Route("zad3")]
        public float Zad3(int a, int b)
        {
            return (a*b) + (a/(float)b);
        }
        //ovdje završava ruta



        //ovdjee počinje ruta
        [HttpGet]
        [Route("zad4")]
        public bool Zad4(int a, int b)
        {
            return a==b;
        }
        //ovdje završava ruta



        //ovdjee počinje ruta
        [HttpGet]
        [Route("zad5")]
        public string Zad5(string a, string b)
        {
            return a + " " + b;
        }
        //ovdje završava ruta
    }
}
