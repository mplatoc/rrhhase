using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RRHH.Archivos
{
    public partial class Login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtcorreo.Text == "" || txtcontra.Text == "")
            {
                //que se muestre un mensaje que tiene que llenar todos los campos
                Response.Write("<script> alert(" + "'No deje campos en blanco'" + ") </script>");
            }
            else
            {
                Servicio.Conexion con = new Servicio.Conexion();
                int val = con.LOGIN(txtcorreo.Text.ToString(), Int32.Parse(txtcontra.Text.ToString()));

                if (val == 1)
                {

                    Session["correo"] = txtcorreo.Text.ToString();
                    Server.Transfer("Inicio.aspx");

                }
                else {

                    Response.Write("<script> alert(" + "'Revise su correo o contraseña'" + ") </script>");

                }

            }
         }

     
    }
}
    