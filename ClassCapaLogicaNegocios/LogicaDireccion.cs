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
    public class LogicaDireccion
    {
        private ClassAccesoSQL objectoDeAcceso =
           new ClassAccesoSQL("Data Source=DESKTOP-4UCILN2\\SQLEXPRESS; Initial Catalog=PedidosCarniceria; Integrated Security = true;");

        public Boolean InsertarDireccion(EntidadesDireccion entidadDir, ref string mensajeSalida)
        {
            SqlParameter[] parametros = new SqlParameter[7];

            parametros[0] = new SqlParameter
            {
                ParameterName = "colonia",
                SqlDbType = SqlDbType.VarChar,
                Size = 120,
                Direction = ParameterDirection.Input,
                Value = entidadDir.colonia
            };

            parametros[1] = new SqlParameter
            {
                ParameterName = "CalleNumero",
                SqlDbType = SqlDbType.VarChar,
                Size = 120,
                Direction = ParameterDirection.Input,
                Value = entidadDir.calleyNumero
            };

            parametros[2] = new SqlParameter
            {
                ParameterName = "municipio",
                SqlDbType = SqlDbType.VarChar,
                Size = 90,
                Direction = ParameterDirection.Input,
                Value = entidadDir.municipio

            };

            parametros[3] = new SqlParameter
            {
                ParameterName = "ciudad",
                SqlDbType = SqlDbType.VarChar,
                Size = 90,
                Direction = ParameterDirection.Input,
                Value = entidadDir.ciudad
            };

            parametros[4] = new SqlParameter
            {
                ParameterName = "referencia",
                SqlDbType = SqlDbType.VarChar,
                Size = 120,
                Direction = ParameterDirection.Input,
                Value = entidadDir.referencia
            };

            parametros[5] = new SqlParameter
            {
                ParameterName = "caracteristica",
                SqlDbType = SqlDbType.VarChar,
                Size = 100,
                Direction = ParameterDirection.Input,
                Value = entidadDir.caracteristica
            };

            parametros[6] = new SqlParameter
            {
                ParameterName = "cp",
                SqlDbType = SqlDbType.VarChar,
                Size = 10,
                Direction = ParameterDirection.Input,
                Value = entidadDir.codigoPostal
            };


            string sentencia = "INSERT INTO Ubicacion(F_Cliente, Colonia, Calleynumero, Municipio, Ciudad, Referencia, Caracteristica, CP) SELECT MAX(id_Cliente), @colonia, @CalleNumero, @municipio, @ciudad, @referencia, @caracteristica, @cp FROM Cliente; ";

           
            Boolean salida = false;

            salida = objectoDeAcceso.OperacionesSQLConParametros(sentencia, objectoDeAcceso.AbrirConexion(ref mensajeSalida), ref mensajeSalida, parametros);

            return salida;
        }
    }
}
