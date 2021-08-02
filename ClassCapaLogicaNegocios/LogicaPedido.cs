using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaAccesoDatosSQL;
using ClassCapaEntidades;

using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace ClassCapaLogicaNegocios
{
    public class LogicaPedido
    {

        private ClassAccesoSQL objectoDeAcceso =
         new ClassAccesoSQL("Data Source=ROMANISIDOR; Initial Catalog=PedidosCarniceria; Integrated Security = true;");
        public Boolean InsertarPedido(EntidadesPedido entidadPed, ref string mensajeSalida)
        {
            SqlParameter[] parametros = new SqlParameter[4];


            entidadPed.fechahora = DateTime.Now;

            int id = (int)HttpContext.Current.Session["ID"];

            parametros[0] = new SqlParameter
            {
                ParameterName = "fechahora",
                SqlDbType = SqlDbType.DateTime,
                Direction = ParameterDirection.Input,
                Value = entidadPed.fechahora 
            };

            parametros[1] = new SqlParameter
            {
                ParameterName = "idCliente",
                SqlDbType = SqlDbType.Int,
                Direction = ParameterDirection.Input,
                Value = id
            };

            parametros[2] = new SqlParameter
            {
                ParameterName = "envio",
                SqlDbType = SqlDbType.Bit,
                Direction = ParameterDirection.Input,
                Value = entidadPed.envio
            };

            parametros[3] = new SqlParameter
            {
                ParameterName = "pago",
                SqlDbType = SqlDbType.VarChar,
                Size = 50,
                Direction = ParameterDirection.Input,
                Value = entidadPed.pago

            };



            string sentencia = "INSERT INTO Pedido(FechaHora, F_Cliente, F_Carnicero, Envio, Pago) values (@fechahora,@idCliente, (SELECT TOP 1 id_Carnicero FROM Carnicero ORDER BY NEWID()), @envio, @pago); ";

            Boolean salida = false;

            salida = objectoDeAcceso.OperacionesSQLConParametros(sentencia, objectoDeAcceso.AbrirConexion(ref mensajeSalida), ref mensajeSalida, parametros);

            return salida;
        }

    }
}
