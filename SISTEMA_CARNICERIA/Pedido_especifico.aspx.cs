﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassCapaLogicaNegocios;
namespace SISTEMA_CARNICERIA
{
    public partial class Pedido_especifico : System.Web.UI.Page
    {
        LogicaPedido objAccessoPed = null;
        protected void Page_Load(object sender, EventArgs e)
        {
     
            if (IsPostBack == false)
            {
                objAccessoPed = new LogicaPedido();
                Session["objAccessoPed"] = objAccessoPed;

                string msj = "";
                GridView1.DataSource = objAccessoPed.ObtenerPedidoEspecifico(ref msj);
                GridView1.DataBind();

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