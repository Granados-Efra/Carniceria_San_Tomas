using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassCapaEntidades
{
    public class EntidadesCliente
    {
        public int idCliente { set; get; }
        public string nombre  { get; set; }
        public string apellidoPat { get; set; }
        public string apellidoMat { get; set; }
        public string celular { get; set; }
        public string correo { get; set; }
    }
}
