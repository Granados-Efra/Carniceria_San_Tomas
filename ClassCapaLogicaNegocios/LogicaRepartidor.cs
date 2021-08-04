using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaAccesoDatosSQL;
using ClassCapaEntidades;
using System.Data;
using System.Data.SqlClient;
namespace ClassCapaLogicaNegocios
{
    public class LogicaRepartidor

    {

        private ClassAccesoSQL objectoDeAcceso =
           new ClassAccesoSQL("Data Source=DESKTOP-4UCILN2\\SQLEXPRESS; Initial Catalog=PedidosCarniceria; Integrated Security = true;");
        public Boolean InsertarRepartidor(EntidadesRepartidor entidadRepar, ref string mensajeSalida)
        {
            SqlParameter[] parametros = new SqlParameter[3];

            parametros[0] = new SqlParameter
            {
                ParameterName = "nombre",
                SqlDbType = SqlDbType.VarChar,
                Size = 200,
                Direction = ParameterDirection.Input,
                Value = entidadRepar.nombre
            };

            parametros[1] = new SqlParameter
            {
                ParameterName = "celular",
                SqlDbType = SqlDbType.VarChar,
                Size = 20,
                Direction = ParameterDirection.Input,
                Value = entidadRepar.celular
            };

            parametros[2] = new SqlParameter
            {
                ParameterName = "licencia",
                SqlDbType = SqlDbType.VarChar,
                Size = 40,
                Direction = ParameterDirection.Input,
                Value = entidadRepar.licencia

            };

          

            string sentencia = "insert into Repartidor values(@nombre, @celular, @licencia) ";

            Boolean salida = false;

            salida = objectoDeAcceso.OperacionesSQLConParametros(sentencia, objectoDeAcceso.AbrirConexion(ref mensajeSalida), ref mensajeSalida, parametros);

            return salida;

        }




    }
}
