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
    
    public class LogicaProducto
    {

        private ClassAccesoSQL objectoDeAcceso =
         new ClassAccesoSQL("Data Source=DESKTOP-4UCILN2\\SQLEXPRESS; Initial Catalog=PedidosCarniceria; Integrated Security = true;");
        public Boolean InsertarProducto(EntidadesProductos entidadProd, ref string mensajeSalida)
        {
            SqlParameter[] parametros = new SqlParameter[5];

            parametros[0] = new SqlParameter
            {
                ParameterName = "nombre",
                SqlDbType = SqlDbType.VarChar,
                Size = 90,
                Direction = ParameterDirection.Input,
                Value = entidadProd.nombreProd
            };

            parametros[1] = new SqlParameter
            {
                ParameterName = "peso",
                SqlDbType = SqlDbType.Int,
                Direction = ParameterDirection.Input,
                Value = entidadProd.peso
            };

            parametros[2] = new SqlParameter
            {
                ParameterName = "cantidad",
                SqlDbType = SqlDbType.VarChar,
                Size = 90,
                Direction = ParameterDirection.Input,
                Value = entidadProd.cantidad

            };

            parametros[3] = new SqlParameter
            {
                ParameterName = "precio",
                SqlDbType = SqlDbType.Float,  
                Direction = ParameterDirection.Input,
                Value = entidadProd.precioFin
            };

            parametros[4] = new SqlParameter
            {
                ParameterName = "nota",
                SqlDbType = SqlDbType.VarChar,
                Size = 150,
                Direction = ParameterDirection.Input,
                Value = entidadProd.nota
            };

            string sentencia = "INSERT INTO Producto(F_Pedido, NombreProd, Peso, Cantidad, PrecioFinal, NotaEspecial) SELECT MAX(id_Pedido), @nombre, @peso, @cantidad, @precio, @nota FROM Pedido; ";


            Boolean salida = false;

            salida = objectoDeAcceso.OperacionesSQLConParametros(sentencia, objectoDeAcceso.AbrirConexion(ref mensajeSalida), ref mensajeSalida, parametros);

            return salida;
        }
    }
    }
