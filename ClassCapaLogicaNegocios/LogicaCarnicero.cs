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
    public class LogicaCarnicero
    {

        private ClassAccesoSQL objectoDeAcceso =
           new ClassAccesoSQL("Data Source=ROMANISIDOR; Initial Catalog=PedidosCarniceria; Integrated Security = true;");
        public Boolean InsertarCarnicero(EntidadCarnicero entidadCarnicero, ref string mensajeSalida)
        {
            SqlParameter[] parametros = new SqlParameter[4];

            parametros[0] = new SqlParameter
            {
                ParameterName = "nombre",
                SqlDbType = SqlDbType.VarChar,
                Size = 190,
                Direction = ParameterDirection.Input,
                Value = entidadCarnicero.nombre
            };

            parametros[1] = new SqlParameter
            {
                ParameterName = "celular",
                SqlDbType = SqlDbType.VarChar,
                Size = 20,
                Direction = ParameterDirection.Input,
                Value = entidadCarnicero.celular
            };

            parametros[2] = new SqlParameter
            {
                ParameterName = "correo",
                SqlDbType = SqlDbType.VarChar,
                Size = 150,
                Direction = ParameterDirection.Input,
                Value = entidadCarnicero.correo

            };

            parametros[3] = new SqlParameter
            {
                ParameterName = "experiencia_anios",
                SqlDbType = SqlDbType.SmallInt,
                Direction = ParameterDirection.Input,
                Value = entidadCarnicero.exp_anios
            };

            string sentencia = "insert into Carnicero values(@nombre, @celular, @correo, @experiencia_anios) ";

            Boolean salida = false;

            salida = objectoDeAcceso.OperacionesSQLConParametros(sentencia, objectoDeAcceso.AbrirConexion(ref mensajeSalida), ref mensajeSalida, parametros);

            return salida;

        }
    }
}
