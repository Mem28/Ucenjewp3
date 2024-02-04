using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class Z03
    {
        public static void Izvedi()
        {

            Console.WriteLine("Unesi prvi broj: ");
                int Broj1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Unesi drugi broj:");
            int Broj2 = int.Parse(Console.ReadLine());

            Console.WriteLine("Unesi treći broj: ");
                int Broj3 = int.Parse(Console.ReadLine());

            if ((Broj1 < Broj2 && Broj1 < Broj3))
                Console.WriteLine("Broj 1");
            else if (Broj2 < Broj1 && (Broj2 < Broj3))
                Console.WriteLine("Broj 2");
            else
                Console.WriteLine("Broj 3");
                
            
        }
    }
}
