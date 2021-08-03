using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassCapaLogicaNegocios;
namespace SISTEMA_CARNICERIA
{
    public partial class Pedidos : System.Web.UI.Page
    {
        LogicaPedido objAccessoPed = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack == false)
            {
                objAccessoPed = new LogicaPedido();
                Session["objAccessoPed"] = objAccessoPed;

                string msj = "";
                GridView1.DataSource = objAccessoPed.ObtenerPedidos(ref msj);
                GridView1.DataBind();

                
                List<int> lista  = new List<int>();
                List<Button> buttons = new List<Button>();
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                   
                    lista.Add(Convert.ToInt32(GridView1.Rows[i].Cells[7].Text));

                    Button newButton = new Button();
                    buttons.Add(newButton);

                    newButton.ID = GridView1.Rows[i].Cells[7].Text;
                    this.Form.Controls.Add(newButton);


                    //string output = string.Join(Environment.NewLine, lista.ToArray());

                    //TextBox1.Text = output;
                }





            }
            else
            {
                objAccessoPed = (LogicaPedido)Session["objAccessoPed"];

             
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}