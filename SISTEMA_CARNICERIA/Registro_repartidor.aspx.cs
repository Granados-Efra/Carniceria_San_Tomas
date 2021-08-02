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
    public partial class Registro_repartidor : System.Web.UI.Page
    {
        LogicaRepartidor objAccesoRepar = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                objAccesoRepar = new LogicaRepartidor();
                Session["objAccesoRepar"] = objAccesoRepar;



            }
            else
            {
                objAccesoRepar = (LogicaRepartidor)Session["objAccesoRepar"];


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadesRepartidor entidad = new EntidadesRepartidor
            {
                nombre = TextBox1.Text,
                celular = TextBox2.Text,
                licencia = TextBox3.Text,
              

            };

            string mensaje = "";

            Boolean isSucces = objAccesoRepar.InsertarRepartidor(entidad, ref mensaje);


            if (isSucces == true)
            {

                Page.ClientScript.RegisterStartupScript(this.GetType(),
                    "messg3B", "msgbox3('Correcto','" + mensaje + " ','success');",
                    true);

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(),
                    "messg3A", "msgbox3('Algo salió mal...','" + mensaje + " ','error');",
                    true);
            }
        }
    }
}