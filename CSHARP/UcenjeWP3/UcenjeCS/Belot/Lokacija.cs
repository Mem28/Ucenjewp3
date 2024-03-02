using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.Belot
{
    public class Lokacija:Entitet
    {
        public double longitude { get; set; }
        public double latitude { get; set; }
        public string naziv { get; set; }
    }
}
