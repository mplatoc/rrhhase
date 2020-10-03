using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RRHH.Archivos
{
    public partial class ControlDiaMes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (txtidem.Text == "" || txtfio.Text == "" || txtfin.Text == "" || txtdino.Text == "")
            {
                //que se muestre un mensaje que tiene que llenar todos los campos
                Response.Write("<script> alert(" + "'No deje campos en blanco'" + ") </script>");
            }
            else
            {
                try { 
                Servicio.Conexion cone = new Servicio.Conexion();
                 cone.crtdiames(Int32.Parse(txtidem.Text.ToString()), txtfio.Text.ToString(), txtfin.Text.ToString(), int.Parse(txtdino.Text.ToString()));
                    Response.Write("<script> alert(" + "'Ingresado Correctamente'" + ") </script>");
                    txtidem.Text = ""; txtfio.Text = ""; txtfin.Text = ""; txtdino.Text = "";
                }
                catch(Exception ex)
                {
                    Response.Write("<script> alert(" + "'Error'" + ") </script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("controldia.aspx");
        }
    }
}