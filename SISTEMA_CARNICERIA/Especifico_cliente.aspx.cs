using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassCapaLogicaNegocios;

namespace SISTEMA_CARNICERIA
{
    public partial class Especifico_cliente : System.Web.UI.Page
    {
        LogicaPedido objAccessoPed = null;
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
                objAccessoPed = new LogicaPedido();
                Session["objAccessoPed"] = objAccessoPed;

                string msj = "";
                GridView1.DataSource = objAccessoPed.ObtenerPedidosPorCliente(ref msj);
                GridView1.DataBind();


            }
            else
            {
                objAccessoPed = (LogicaPedido)Session["objAccessoPed"];


            }
        }

        public void eventoButton(object sender, EventArgs e)
        {
            string x = ((Button)sender).CommandArgument;
            Session["id_seleccionado"] = Convert.ToInt32(x);
            Server.Transfer("Ped_espe_cliente.aspx");
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}