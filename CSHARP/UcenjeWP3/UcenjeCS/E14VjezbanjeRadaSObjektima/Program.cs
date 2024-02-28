using System;
using System.Buffers;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.E14VjezbanjeRadaSObjektima
{
    internal class Program
    {

        private List<Osoba> Osobe;

        /// <summary>
        /// Kreirati aplikaciju koja unosi, pregledava,mijenja i briše osobe
        /// </summary>
        public Program() 
        {
            //Konstruktor služi da bi konstruirao potrebne zavisnosti
            Osobe = new List<Osoba>();
            TestPodaci();
            PozdravnaPoruka();
            Izbornik();
        }

        private void TestPodaci()
        {
            Osobe.Add(new(){ Ime="Ana",Prezime="Kat",Dob=12});
            Osobe.Add(new(){ Ime = "Marko",Prezime = "Kekin",Dob = 14});
        }

        private void Izbornik()
        {
            Console.WriteLine("1.Pregled osoba");
            Console.WriteLine("2.Unos nove osobe");
            Console.WriteLine("3.Promjena osobe");
            Console.WriteLine("4.Brisanje osobe");
            Console.WriteLine("5.Izlaz iz programa");
            OdaberiOpciju();
        }

        private void OdaberiOpciju()
        {
            switch(Pomocno.UcitajCijeliBroj("Odaberi opciju"))
            {
                    case 1:
                    PrikaziOsobe();
                    Izbornik();
                    break;
                    case 2:
                    UnosNoveOsobe();
                    Izbornik();
                    break;
                    case 3:
                    PromjenaOsobe();
                    Izbornik();
                    break;
                case 4:
                    BrisanjeOsobe();
                    Izbornik();
                    break;
                case 5:
                    Console.WriteLine("Program je završio. Doviđenja");
                    break;
                default:
                    Console.WriteLine("Nije dobra opcija");
                    Console.WriteLine("*********************");
                    Izbornik();
                    break;
            }
        }

        private void BrisanjeOsobe()
        {
            if (Osobe.Count == 0)
            {
                Console.WriteLine("Nema osoba za mijenjati");
                return;
            }
            Console.WriteLine("*************");
            Console.WriteLine("***Brisanje Osobe***");
            Console.WriteLine("*************");
            PrikaziOsobe();
           
            int izbor = Pomocno.UcitajCijeliBroj("Izaberi broj osobe (0 odustani)",0,Osobe.Count);
            if (izbor == 0)
            {
                return;
            }
            Osobe.RemoveAt(izbor - 1);
        }

        private void PromjenaOsobe()
        {
            if (Osobe.Count == 0) 
            {
                Console.WriteLine("Nema osoba za mijenjati");
            }
            PrikaziOsobe();
            int izbor = Pomocno.UcitajCijeliBroj("Izaberi broj osobe (0 odustani)",0,Osobe.Count);
            if (izbor == 0) 
            {
                return;
            }
            var o = Osobe[izbor - 1];
            o.Ime = Pomocno.UcitajString("Učitaj ime");
            o.Prezime = Pomocno.UcitajString("Učitaj prezime");
            o.Dob = Pomocno.UcitajCijeliBroj("Učitaj dob");

        }

        private void UnosNoveOsobe()
        {
            Osobe.Add(new()
            {
                Ime = Pomocno.UcitajString("Unesi ime osobe"),
                Prezime = Pomocno.UcitajString("Unesi prezime osobe"),
                Dob = Pomocno.UcitajCijeliBroj("Unesi dob osobe: ")
            });
        }

        private void PrikaziOsobe(bool PrikaziNaslov = false)
        {
            if (PrikaziNaslov)
            {
                Console.WriteLine("***********************");
                Console.WriteLine("*** Osobe u sustavu ****");
                Console.WriteLine("************************");
            }
           if (Osobe.Count == 0)
            {
                Console.WriteLine("Nema nijedne osobe u sustavu");
                return;
            }
            
            
            int i = 1;
            
            foreach (var o in Osobe)
            {
                Console.WriteLine(i++ + ". " + o);

            }
        }

        private void PozdravnaPoruka()
        {
            Console.WriteLine("Osobe program V1");
            Console.WriteLine("*************");
        }
    }
}
