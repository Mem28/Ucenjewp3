﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class E06ForPetlja
    {

        public static void Izvedi()

        {

            for (int i = 0; i < 10; i=i+1)
            {
                Console.WriteLine("Edunova" + i);
            }
            int[] niz = { 1, 2, 3, 44, 5, 6, 7, 8, 9 };

            for (int i = 0;i < niz.Length;i=i+1)
            {
                Console.WriteLine(niz[i]);
            }


            for (int i = 3; i <= 43; i++) 
            {
                if(i%2==0)
                {
                    Console.WriteLine(i);
                }
            }

            int suma = 0;
            for(int i = 1; i<=100;  i++)
            {
                suma += i;
                Console.WriteLine(suma);
            }


            for (int i =78; i>=4; i--)
            {

                Console.WriteLine(i);
            }

            for(int i  = 1;i<=100; i+=7)
            { 
                    Console.WriteLine(i); 
            }


            for (int i =1; i<=20; i++)
            {
                Console.Write(i + " ");
            }
            Console.WriteLine("***************");

            for (int i =1; i<=10; i++)
            {
                for (int j =1; j<=10; j++)
                { 
                    Console.Write(i*j + " ");
                }
                Console.WriteLine();

            }

            

            for (int i = 0 ; i<10; i++)
            {

                if (i==3)
                {
                    continue;
                }
                Console.WriteLine(i);
            }


            for (int i = 0 ; i<10;i++)
            {
                if (i==3) 
                {
                    break;
                }
                Console.WriteLine(i);
            }

            for (int i =0 ; i<10;i++)
            {
                for (int j =0; j<10; j++)
                {
                    goto labela;
                    //break;
                }

            }

            labela:
            Console.WriteLine("nastavljam nakon vanjske petlje");



            for (; ; )
            {
                Console.WriteLine(new Random().NextInt64(1,100));
                break;
            }












        }
    }
}
