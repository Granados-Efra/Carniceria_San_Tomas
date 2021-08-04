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
           new ClassAccesoSQL("Data Source=DESKTOP-4UCILN2\\SQLEXPRESS; Initial Catalog=PedidosCarniceria; Integrated Security = true;");

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

        public DataTable ObtenerTodosClientes(ref string msj_salida)
        {

            string query = "Select id_Cliente as Numero_Registro, Nombre,App as Apellido_Paterno,ApM as Apellido_Materno,Celular,Correo from Cliente";
            DataSet ObtencionEmpleados = null;
            DataTable Datos_salida = null;
            ObtencionEmpleados = objectoDeAcceso.ConsultaDS(query, objectoDeAcceso.AbrirConexion(ref msj_salida), ref msj_salida);

            if (ObtencionEmpleados != null)
            {
                Datos_salida = ObtencionEmpleados.Tables[0];
                if (Datos_salida.Rows.Count == 0)
                {
                    //La consulta es correcta pero el DataSet no está
                    //devolviendo registros

                    Datos_salida.Rows.Add(Datos_salida.NewRow());



                }

            }

            return Datos_salida;
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
        public List<EntidadRepartidor> ObtenerCarniceros(ref string msj_salida)
        {
            SqlConnection conexion = null;

            string query = "SELECT * FROM Carnicero";



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
