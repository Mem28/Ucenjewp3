using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class Subota01
    {
        public static void Izvedi()
        {
            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine(DateTimeOffset.Now.ToUnixTimeMilliseconds());
                if (i == 4)
                {
                    break;
                }
                //Console.WriteLine("\a");
                //Thread.Sleep(1000); // usporavanje rada programa - spavaj jednu sekundu

            }


            int t = 2147483647;

            long l = t + 1; // implicitno

            l = 2147483648247246276;

            Console.WriteLine(l);

            t = (int)l; // ekplicitno

            Console.WriteLine(t);



            // Zadatak 1:

            // Program unosi tri cijela broja i ispisuje
            // ih jedan pored drugoga

            Console.WriteLine("Unesi prvi broj: ");
            int broj1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Unesi drugi broj: ");
            int broj2 = int.Parse(Console.ReadLine());

            Console.WriteLine("Unesi treći broj: ");
            int broj3 = int.Parse(Console.ReadLine());

            Console.Write(broj1 + "" + broj2 + "" + broj3);



            // Zadatak 2:

            // Program unosi imena triju gradova malim slovima
            // Ako svako ime grada počinje sa slovom o
            // ispisuje SUPER inače ispisuje OK


            // Rješenje 1:

            Console.WriteLine("Unesi 1.grad: ");

            string g1 = Console.ReadLine();

            Console.WriteLine("Unesi 2. grad: ");

            string g2 = Console.ReadLine();

            Console.WriteLine("Unesi 3. grad");

            string g3 = Console.ReadLine();

            if (g1[0] == 'o' && g2[0] == 'o' && g3[0] == 'o')
            {
                Console.WriteLine("SUPER");
            }
            else
            {
                Console.WriteLine("OK");
            }


            // Rješenje 2

            string[] gradovi = new string[3];
            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine("Unesi ime" + (i + 1) + ".grada: ");
                gradovi[i] = Console.ReadLine();
            }
            bool pocinju = true;
            foreach (string grad in gradovi)
            {
                if (grad[0] != 'o')
                {
                    pocinju = false;
                    break;
                }

            }
            Console.WriteLine(pocinju ? "SUPER" : "OK");



            // Rješenje 3 - DOBRA PRAKSA (Best practice)

            string grad;

            bool pocinje = true;
            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine("Unesi ime" + (i + 1) + ".grada: ");
                grad = Console.ReadLine();
                if (grad[0] != 'o')
                {
                    pocinje = false;
                    break;
                }
            }
            Console.WriteLine(pocinje ? "SUPER" : "OK");




            // Zadatak 2
            // Kreirajte KN/EUR konverzija kalkulator

            int vrsta;

            while (true)
            {
                Console.WriteLine("Odaberi vrstu konverzije");
                Console.Write("1.KN -> EUR, 2. EUR ->KN: ");
                vrsta = int.Parse(Console.ReadLine());
                if (vrsta == 1 || vrsta == 2)
                {
                    break;
                }
                Console.WriteLine("Neispravna vrsta");
            }


            double iznos;
            Console.WriteLine("Unesi iznos u " + (vrsta == 1 ? "kunama" : "eurima") + ":");
            iznos = double.Parse(Console.ReadLine());
            Console.WriteLine(vrsta == 1 ? iznos / 7.5345 : iznos * 7.5345);

            if (vrsta == 1)
            {

                Console.WriteLine("Unesi iznos u kunama: ");
                iznos = double.Parse(Console.ReadLine());
                Console.WriteLine(Math.Truncate((iznos / 7.5345) * 100) / 100); //zaokruživanje na dvije decimale
            }
            else
            {

                Console.WriteLine("Unesi iznos u eurima: ");
                iznos = double.Parse(Console.ReadLine());
                Console.WriteLine(iznos * 7.5345);
            }
        }



        //Zadatak 3
        // Napravite program koji će puknut prilikom izvođenja
        // a biti će sintaksno ispravan


        string b = Console.ReadLine();







        }

    }
}
