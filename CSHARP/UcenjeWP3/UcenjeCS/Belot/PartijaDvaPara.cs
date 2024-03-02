using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.Belot
{
    public class PartijaDvaPara:Partija
    {
        public override string ToString()
        {
            var r = getRezultat();
            return "Partija DVA PARA, igra gotova: " + isIgraGotova() + ", " + igraci[0] +
            " i " + igraci[1] + " : " +r.prvi + " | " + igraci[2] + " i " + igraci[3] + ": " + r.drugi;
        }
    }
}
