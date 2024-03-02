using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.Belot
{
    public class PartijaTriIgraca : Partija
    {
        public override Rezultat getRezultat()
        {
            var r = base.getRezultat();
            foreach (Mjesanje m in mjesanja)
            {
                r.treci += m.getRezultat().treci;
            }

            return r;
        }

        public override string ToString()
        {
            var r = getRezultat();
            return "Partija TRI IGRAČA, igra gotova: " + isIgraGotova() + ", " + igraci[0] +
                " : " +
                    r.prvi +
                    " | " + igraci[1] + " : " + r.drugi +
                    " | " + igraci[2] + ": " + r.treci; ;
        }
    }
}
