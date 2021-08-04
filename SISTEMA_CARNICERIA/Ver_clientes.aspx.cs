using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassCapaLogicaNegocios;

namespace SISTEMA_CARNICERIA
{
    public partial class Ver_clientes : System.Web.UI.Page
    {
        LogicaCliente objAccessoPed = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nombres"] != null)
            {

                string nombre = (string)Session["Nombres"];

                //TextBox1.Text = nombre;
            }
            else
            {

            }

            if (IsPostBack == false)
            {
                objAccessoPed = new LogicaCliente();
                Session["objaccesoCliente"] = objAccessoPed;

                string msj = "";
                GridView1.DataSource = objAccessoPed.ObtenerTodosClientes(ref msj);
                GridView1.DataBind();


            }
            else
            {
                objAccessoPed = (LogicaCliente)Session["objaccesoCliente"];


            }
        }

        public void eventoButton(object sender, EventArgs e)
        {
            //string x = ((Button)sender).CommandArgument;
            //Session["id_seleccionado"] = Convert.ToInt32(x);
            //Server.Transfer("Pedido_especifico.aspx");
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}