using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SISTEMA_CARNICERIA
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nombres"]!=null)
            {

                string nombre = (string)Session["Nombres"];
                
                //TextBox1.Text = nombre;
            }
            else
            {
                
            }
        }
    }
}