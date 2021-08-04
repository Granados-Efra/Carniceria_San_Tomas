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
   
    public partial class Registro_carnicero : System.Web.UI.Page
    {

        LogicaCarnicero objAccesoCarni = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoCarni = new LogicaCarnicero();
                Session["objAccesoCarni"] = objAccesoCarni;

                

            }
            else
            {
                objAccesoCarni = (LogicaCarnicero)Session["objAccesoCarni"];

                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadesCarnicero entidad = new EntidadesCarnicero
            {
                nombre = TextBox1.Text,
                celular =TextBox2.Text,
                correo = TextBox3.Text,
                experiencia = TextBox4.Text
              
            };

            string mensaje = "";

            Boolean isSucces = objAccesoCarni.InsertarCarnicero(entidad, ref mensaje);


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