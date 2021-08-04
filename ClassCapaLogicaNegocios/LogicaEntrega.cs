using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaAccesoDatosSQL;

using System.Data;
using System.Data.SqlClient;

namespace ClassCapaLogicaNegocios
{
    public class LogicaEntrega
    {

        private ClassAccesoSQL objectoDeAcceso =
           new ClassAccesoSQL("Data Source=ROMANISIDOR; Initial Catalog=PedidosCarniceria; Integrated Security = true;");

        public Boolean InsertaEntrega(ref string mensajeSalida)
        {
            SqlParameter[] parametros = new SqlParameter[3];

            DateTime salida = DateTime.Now;

            DateTime salidaReal = salida.AddMinutes(10);

            DateTime entrega = DateTime.Now;

            DateTime entregaReal = entrega.AddMinutes(25);

            string estado = "entregado";



            parametros[0] = new SqlParameter
            {


                ParameterName = "salida",
                SqlDbType = SqlDbType.DateTime,
                Direction = ParameterDirection.Input,
                Value = salidaReal
            };

            parametros[1] = new SqlParameter
            {
                ParameterName = "entrega",
                SqlDbType = SqlDbType.DateTime,
                Direction = ParameterDirection.Input,
                Value = entregaReal
            };

            parametros[2] = new SqlParameter
            {
                ParameterName = "estado",
                SqlDbType = SqlDbType.VarChar,
                Size = 50,
                Direction = ParameterDirection.Input,
                Value = estado
            };


            string sentencia = "INSERT INTO EntregaPedido(Salida, F_Pedido, F_Repartidor, SeEntrego, Estado) values (@salida,(SELECT MAX(id_Pedido) FROM Pedido), (SELECT TOP 1 id_Repartidor FROM Repartidor ORDER BY NEWID()), @entrega, @estado);";


            Boolean resultado = false;

            resultado = objectoDeAcceso.OperacionesSQLConParametros(sentencia, objectoDeAcceso.AbrirConexion(ref mensajeSalida), ref mensajeSalida, parametros);

            return resultado;
        }

    }
}
