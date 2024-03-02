using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.Belot
{
    public class Igrac: Entitet
    {
        public string ime { get; set; }
        public string prezime { get; set; }
        public string urlSlika { get; set; }
        public int spol { get; set; }

        public override string ToString()
        {
            return ime + " " + prezime;
        }
    }
}
