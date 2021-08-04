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
    public class LogicaCliente
    {
        private ClassAccesoSQL objectoDeAcceso =
           new ClassAccesoSQL("Data Source=ROMANISIDOR;Initial Catalog=PedidosCarniceria; Integrated Security = true;");

        public Boolean InsertarCliente(EntidadesCliente entidadClient, ref string mensajeSalida)
        {
            SqlParameter[] parametros = new SqlParameter[5];

            parametros[0] = new SqlParameter
            {
                ParameterName = "nombre",
                SqlDbType = SqlDbType.VarChar,
                Size=90,
                Direction = ParameterDirection.Input,
                Value = entidadClient.nombre
            };

            parametros[1] = new SqlParameter
            {
                ParameterName = "ApPat",
                SqlDbType = SqlDbType.VarChar,
                Size = 90,
                Direction = ParameterDirection.Input,
                Value = entidadClient.apellidoPat
            };

            parametros[2] = new SqlParameter
            {
                ParameterName = "ApMat",
                SqlDbType = SqlDbType.VarChar,
                Size = 90,
                Direction = ParameterDirection.Input,
                Value = entidadClient.apellidoMat

            };

            parametros[3] = new SqlParameter
            {
                ParameterName = "celular",
                SqlDbType = SqlDbType.VarChar,
                Size = 20,
                Direction = ParameterDirection.Input,
                Value = entidadClient.celular
            };

            parametros[4] = new SqlParameter
            {
                ParameterName = "correo",
                SqlDbType = SqlDbType.VarChar,
                Size = 150,
                Direction = ParameterDirection.Input,
                Value = entidadClient.correo
            };



            string sentencia = "insert into Cliente values(@nombre, @ApPat, @ApMat, @celular, @correo) ";

            Boolean salida = false;

            salida = objectoDeAcceso.OperacionesSQLConParametros(sentencia, objectoDeAcceso.AbrirConexion(ref mensajeSalida), ref mensajeSalida, parametros);

            return salida;
        }

        public List<EntidadesCliente> ObtenerClientes(ref string msj_salida)
        {
            SqlConnection conexion = null;

            string query = "SELECT * FROM CLIENTE";

          

            conexion = objectoDeAcceso.AbrirConexion(ref msj_salida);

            SqlDataReader ObtenerDatos = null;

            ObtenerDatos = objectoDeAcceso.ConsultarReader(query, conexion, ref msj_salida);

            List<EntidadesCliente> lista = new List<EntidadesCliente>();


            if (ObtenerDatos!= null) 
            {
                while (ObtenerDatos.Read())
                {
                    lista.Add(new EntidadesCliente
                    {
                        idCliente = (int) ObtenerDatos[0],
                        nombre = (string) ObtenerDatos[1]

                    });
                }
            } else
            {
                lista = null;
            }
            conexion.Close();
            conexion.Dispose();

            return lista;

        }
        public List<EntidadRepartidor> ObtenerRepartidores(ref string msj_salida)
        {
            SqlConnection conexion = null;

            string query = "SELECT * FROM Repartidor";



            conexion = objectoDeAcceso.AbrirConexion(ref msj_salida);

            SqlDataReader ObtenerDatos = null;

            ObtenerDatos = objectoDeAcceso.ConsultarReader(query, conexion, ref msj_salida);

            List<EntidadRepartidor> lista = new List<EntidadRepartidor>();


            if (ObtenerDatos != null)
            {
                while (ObtenerDatos.Read())
                {
                    lista.Add(new EntidadRepartidor
                    {
                        id_Repartidor = (int)ObtenerDatos[0],
                        nombre = (string)ObtenerDatos[1]

                    });
                }
            }
            else
            {
                lista = null;
            }
            conexion.Close();
            conexion.Dispose();

            return lista;

        }


    }
}
