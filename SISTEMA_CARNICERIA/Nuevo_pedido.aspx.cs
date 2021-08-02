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
    public partial class Nuevo_pedido : System.Web.UI.Page
    {
        LogicaProducto objAccesoProd = null;

        LogicaPedido objAccesoPed = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoProd = new LogicaProducto();
                Session["objAccesoProd"] = objAccesoProd;

                objAccesoPed = new LogicaPedido();
                Session["objAccesoPed"] = objAccesoPed;

    
            }
            else
            {
                objAccesoProd = (LogicaProducto)Session["objAccesoProd"];

                objAccesoPed = (LogicaPedido)Session["objAccesoPed"];
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadesPedido entidad = new EntidadesPedido
            {

                envio = (byte)Convert.ToInt32(DropDownList1.SelectedValue),
                pago = DropDownList2.SelectedItem.ToString()

            };

            EntidadesProductos entidad2 = new EntidadesProductos
            {
                nombreProd = TextBox1.Text,
                peso = Convert.ToInt32(TextBox2.Text),
                cantidad = Convert.ToInt32(TextBox3.Text),
                precioFin = float.Parse(TextBox4.Text),
                nota = TextBox5.Text

            };

            string msj = "";
            string msj2 = "";

            int x = (int)Convert.ToInt32(DropDownList1.SelectedValue);
            int y = (int)Convert.ToInt32(DropDownList2.SelectedValue);

            if (x == 1 && y==1)
            {
                //objAccesoPed.InsertarPedido(entidad, ref msj);
                //objAccesoProd.InsertarProducto(entidad2, ref msj);

                //TextBox6.Text = msj;
            }
            else
            {
                objAccesoPed.InsertarPedido(entidad, ref msj);
                objAccesoProd.InsertarProducto(entidad2, ref msj2);

                TextBox6.Text = msj;
                TextBox7.Text = msj2;
            }
          

        }
    }
}