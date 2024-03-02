using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.Belot
{
    internal class Rezultat
    {
        public int prvi { get; set; }
        public int drugi { get; set; }
        public int treci { get; set; }


        public bool isPocetak()
        {
            return prvi == 0 && drugi == 0 && treci == 0;
        }
    }
}
