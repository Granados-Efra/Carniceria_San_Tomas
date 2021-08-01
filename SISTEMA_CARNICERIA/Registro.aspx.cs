using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassCapaEntidades;
using ClassCapaLogicaNegocios;
namespace SISTEMA_CARNICERIA
{
    public partial class Registro : System.Web.UI.Page
    {
        LogicaCliente objAccesoClient = null;
        LogicaDireccion objAccesoDir = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoClient = new LogicaCliente();
                Session["objAccesoClient"] = objAccesoClient;

                objAccesoDir = new LogicaDireccion();
                Session["objAccesoDir"] = objAccesoDir;

            }
            else
            {
                objAccesoClient = (LogicaCliente)Session["objAccesoClient"];

                objAccesoDir = (LogicaDireccion)Session["objAccesoDir"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadesCliente entidad = new EntidadesCliente
            {
                nombre = TextBox1.Text,
                apellidoPat = TextBox2.Text,
                apellidoMat = TextBox3.Text,
                celular = TextBox4.Text,
                correo = TextBox5.Text

            };

            EntidadesDireccion entidad2 = new EntidadesDireccion
            {
                colonia = TextBox6.Text,
                calleyNumero = TextBox7.Text,
                municipio = TextBox8.Text,
                ciudad = TextBox9.Text,
                referencia = TextBox10.Text,
                caracteristica = TextBox11.Text,
                codigoPostal = TextBox12.Text
            };

            string mensaje = "";
            string mensaje2 = "";

            objAccesoClient.InsertarEmpleado(entidad, ref mensaje);

            objAccesoDir.InsertarDireccion(entidad2, ref mensaje2);

            TextBox13.Text = mensaje;
            TextBox14.Text = mensaje2;
        }
    }
}