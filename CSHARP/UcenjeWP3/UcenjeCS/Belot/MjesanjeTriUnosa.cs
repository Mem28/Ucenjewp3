using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.Belot
{
    public class MjesanjeTriUnosa:MjesanjeDvaUnosa
    {
        public int bodovaTreciUnos { get; set; }
        public int zvanjeTreciUnos { get; set; }


        public override Rezultat getRezultat()
        {
            var r =base.getRezultat();
            r.treci = bodovaTreciUnos + zvanjeTreciUnos;
            return r;

        }
    }
}
