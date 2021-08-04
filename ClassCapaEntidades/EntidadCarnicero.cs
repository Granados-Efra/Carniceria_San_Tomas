using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassCapaEntidades
{
    public class EntidadCarnicero
    {
        public int id_Carnicero { set; get; }
        public string nombre { get; set; }
        public string celular { get; set; }
        public string correo { get; set; }
        public int exp_anios { get; set; }
    }
}
