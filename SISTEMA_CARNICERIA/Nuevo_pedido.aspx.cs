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

        LogicaEntrega objAccesoEntrega = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoProd = new LogicaProducto();
                Session["objAccesoProd"] = objAccesoProd;

                objAccesoPed = new LogicaPedido();
                Session["objAccesoPed"] = objAccesoPed;

                objAccesoEntrega = new LogicaEntrega();
                Session["objAccesoEntrega"] = objAccesoEntrega;


            }
            else
            {
                objAccesoProd = (LogicaProducto)Session["objAccesoProd"];

                objAccesoPed = (LogicaPedido)Session["objAccesoPed"];

                objAccesoEntrega = (LogicaEntrega)Session["objAccesoEntrega"];
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
            string msj3 = "";

            int x = (int)Convert.ToInt32(DropDownList1.SelectedValue);
            int y = (int)Convert.ToInt32(DropDownList2.SelectedValue);

            if (x == 1 && y==1)
            {
                Boolean isSuccess = objAccesoPed.InsertarPedido(entidad, ref msj);
                Boolean isSuccess2 = objAccesoProd.InsertarProducto(entidad2, ref msj2);
                Boolean isSuccess3 = objAccesoEntrega.InsertaEntrega(ref msj3);

                if (isSuccess == true && isSuccess2 == true && isSuccess3 == true)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(),
                        "messg3B", "msgbox3('Correcto','" + msj + " ','success');",
                        true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(),
                      "messg3A", "msgbox3('Algo salió mal...','" + msj + " ','error');",
                      true);
                }




            }
            else 
            {
               Boolean isSuccess = objAccesoPed.InsertarPedido(entidad, ref msj);
                Boolean isSuccess2 = objAccesoProd.InsertarProducto(entidad2, ref msj2);

                if (isSuccess == true && isSuccess2 == true)
                {

                    Page.ClientScript.RegisterStartupScript(this.GetType(),
                        "messg3B", "msgbox3('Correcto','" + msj + " ','success');",
                        true);

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(),
                        "messg3A", "msgbox3('Algo salió mal...','" + msj + " ','error');",
                        true);
                }
            }
          

        }
    }
}