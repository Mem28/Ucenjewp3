using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.E13Nasljedivanje
{
    internal class Program
    {
        //5.VRSTA METODE : KONSTRUKTOR

        public Program() 
        {
            Console.WriteLine("Nalazim se u konstruktoru Programa u namespace E13");

            //U konstruktoru se pripremaju potrebne zavisnosti - konstruiraju se

            Primjer1();
            Primjer2();
            Primjer3();
            Primjer4();
            Primjer5();
            Primjer6();
            Primjer7();
        }

        private void Primjer7()
        {
            Polaznik[] polaznici = new Polaznik[3];
            polaznici[0] = new Polaznik("Ivana","Maleš","1/24");
            polaznici[1] = new Polaznik("Marko","Kas","2/24");
            polaznici[2] = new Polaznik();
            //s niza polaznici ispisati Kas

            Console.WriteLine(polaznici[1].Prezime);
        }

        private void Primjer6()
        {
            // b = new Baza(); // ne mogu instancirati klasu ako ne posaljem trazeni parametar

            Baza b = new Baza("edunovawp3");
        }

        private void Primjer5()//Specifičnost String klase
        {
            string s = "Osijek";

            var grad = new string("Osijek");

            //String je immutable (nepromjenjiv)

            Console.WriteLine(s.GetHashCode());
            s = s + "je super";
            //ne dobijem isti hashcode jer svaka manipulacija s stringom u memoriji kreira novu varijablu
            Console.WriteLine(s.GetHashCode());

            //u radu sa stringovima preporuča se koristenje klase Stringbuilder

            StringBuilder sb = new StringBuilder();
            Console.WriteLine(sb.GetHashCode());

            sb.Append("Osijek");
            Console.WriteLine(sb.GetHashCode());

            sb.Append(" je super");
            Console.WriteLine(sb.GetHashCode());
            Console.WriteLine(sb); //Poziva se metoda ToString()

        }

        private void Primjer4()//Koristenje GetHashcode metode
        {
            Polaznik p1 = new() { Ime = "Iva" };
            Polaznik p2 = new() { Ime = "Iva" };
            Console.WriteLine(p1==p2); //Što će ispisati: False

            Console.WriteLine(p1.GetHashCode());
            Console.WriteLine(p2.GetHashCode());


        }

        private void Primjer3()//Krištenje Tostring metode
        {
            var p = new Predavac()
            {
                Ime = "Karlo",
                Prezime = "Sat",
                Iban = "HR22"
            };
            Console.WriteLine(p);

            Console.WriteLine(new Polaznik() { Ime="Ranko",Prezime="Ekul",BrojUgovora="1"});

        }

        private void Primjer2()
        {
            //Ne mogu instancirati apstraktnu klasu
            //Osoba osoba = new Osoba();

            OsobaImpl osoba = new OsobaImpl();
            osoba.Ime = "Luka";
            osoba.GetType(); //Metoda GetType dolazi iz klase Object

            
            
        }

        private void Primjer1()
        {
            Predavac p = new Predavac();
            p.Ime = "Pero";
            p.Iban = "HR5987475";

            Polaznik polaznik = new Polaznik();
            polaznik.Ime = "Kata";
            polaznik.BrojUgovora = "12/2024";


            //Ispišite Iban 

            Console.WriteLine(p.Iban);
        }
    }
}
