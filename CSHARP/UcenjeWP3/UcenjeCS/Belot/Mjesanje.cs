using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.Belot
{
    public abstract class Mjesanje:Entitet
    {
        public abstract Rezultat getRezultat();

        public bool stiglja { get; set; }
        public bool belot { get; set; }
    }
}
