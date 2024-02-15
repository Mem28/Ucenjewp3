using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS


{

   
    internal class Z09
    {
        public static void Izvedi()
        {
            string ime = Pomocno.UcitajString("Unesi svoje ime");
            int visina = Pomocno.UcitajCijeliBroj("Unesi svoju visinu u cm");
            float tezina = Pomocno.UcitajDecimalniBroj("Unesi svoju težinu u kg");

            if (visina>170 && visina <190)
            {
                if (tezina<90.5)
                {
                    Console.WriteLine("Ti, "+ime+" si zgodan/zgodna." );
                }

            }
        }
        // Program unosi ime osobe, visinu i težinu
        // Program ispisuje crvenom bojom
        // ako je visina > 170 i <190 te težina je < 90,5
        // Ti, xxxx si zgodan/zgodna


        
    }
}
