﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassCapaEntidades;
using ClassCapaLogicaNegocios;
namespace SISTEMA_CARNICERIA
{
    public partial class Registro : System.Web.UI.Page
    {
        LogicaCliente objAccesoClient = null;
        LogicaDireccion objAccesoDir = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoClient = new LogicaCliente();
                Session["objAccesoClient"] = objAccesoClient;

                objAccesoDir = new LogicaDireccion();
                Session["objAccesoDir"] = objAccesoDir;

                
             

            }
            else
            {
                objAccesoClient = (LogicaCliente)Session["objAccesoClient"];

                objAccesoDir = (LogicaDireccion)Session["objAccesoDir"];
            }
            if (!IsPostBack)
            {
                List<EntidadesCliente> mostrarClientes = null;
                string msj = "";
                mostrarClientes = objAccesoClient.ObtenerClientes(ref msj);
                if (mostrarClientes != null)
                {


                    foreach (EntidadesCliente client in mostrarClientes)
                    {
                        DropDownList1.Items.Add(new ListItem(client.nombre.ToString(), client.idCliente.ToString()));
                        DropDownList1.DataBind();
                    }
                }
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadesCliente entidad = new EntidadesCliente
            {
                nombre = TextBox1.Text,
                apellidoPat = TextBox2.Text,
                apellidoMat = TextBox3.Text,
                celular = TextBox4.Text,
                correo = TextBox5.Text

            };

            EntidadesDireccion entidad2 = new EntidadesDireccion
            {
                colonia = TextBox6.Text,
                calleyNumero = TextBox7.Text,
                municipio = TextBox8.Text,
                ciudad = TextBox9.Text,
                referencia = TextBox10.Text,
                caracteristica = TextBox11.Text,
                codigoPostal = TextBox12.Text
            };

            string mensaje = "";
            string mensaje2 = "";

            Boolean isSucces = objAccesoClient.InsertarCliente(entidad, ref mensaje);

            Boolean isSuccess2 = objAccesoDir.InsertarDireccion(entidad2, ref mensaje2);

            if (isSucces == true && isSuccess2 == true) 
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


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem!=null)
            {
                Session["Nombres"] = DropDownList1.SelectedItem.ToString();
                Session["ID"] = Convert.ToInt32(DropDownList1.SelectedValue);

                if (DropDownList1.SelectedItem.ToString() == "Nombre")
                {

                }
                else
                {
                    Server.Transfer("Profile.aspx");
                }
            }
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("Registro.aspx");
        }
    }
}