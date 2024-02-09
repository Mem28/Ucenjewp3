using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class Z05
    {
        public static void Izvedi()

        {
            Console.WriteLine("Unesi cijeli broj: ");
            int cijelibroj = int.Parse(Console.ReadLine());
            int zbroj = 0;
            for (int i = 1; i <= cijelibroj; i++)
            {
                zbroj += i;
            }
            Console.WriteLine(zbroj);
        }



        

    }
}
