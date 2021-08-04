using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassCapaLogicaNegocios;
using ClassCapaEntidades;
namespace SISTEMA_CARNICERIA
{
    public partial class Especifico_repartidor : System.Web.UI.Page
    {
        LogicaPedido objAcceso = null;
        LogicaCliente objAcceso2 = null;
       
        
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (IsPostBack == false)
            {
                objAcceso = new LogicaPedido();
                Session["objAcceso"] = objAcceso;

                objAcceso2 = new LogicaCliente();
                Session["objAcceso2"] = objAcceso2;
               

            }
            else
            {
                objAcceso = (LogicaPedido)Session["objAcceso"];
                objAcceso2 = (LogicaCliente)Session["objAcceso2"];

            }
            if (!IsPostBack)
            {
                List<EntidadRepartidor> mostrarRepartidores = null;
                string msj = "";
                mostrarRepartidores = objAcceso2.ObtenerRepartidores(ref msj);
                if (mostrarRepartidores != null)
                {
                    

                    foreach (EntidadRepartidor repart in mostrarRepartidores)
                    {
                        DropDownList1.Items.Add(new ListItem(repart.nombre.ToString(), repart.id_Repartidor.ToString()));
                        DropDownList1.DataBind();
                    }
                }
            }

            

        }
        
        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            

           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {  
           
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime fecha = Calendar1.SelectedDate.Date;
            string fecha_comparar = fecha.ToString("yyyy-MM-dd");
            string msj = "";
            int repartidor_comparar = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            GridView1.DataSource = objAcceso.ObtenerEspecificoRepartidor(ref msj, ref fecha_comparar, ref repartidor_comparar);
            GridView1.DataBind();
            foreach (GridViewRow row in GridView1.Rows)
            {
                string str = row.Cells[0].Text;
            }
            
        }
    }
}