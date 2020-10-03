using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RRHH.Archivos
{
    public partial class nuevopuesto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (txtdepa.Text == "" || txtpuesto.Text == "" || txtdesc.Text == "" || txtsal.Text == "")
            {
                //que se muestre un mensaje que tiene que llenar todos los campos
                Response.Write("<script> alert(" + "'No deje campos en blanco'" + ") </script>");
                txtdepa.Text = ""; txtpuesto.Text = ""; txtdesc.Text = "";  txtsal.Text = "";
            }
            else
            {
                Servicio.Conexion cone = new Servicio.Conexion();
                try { 
               
                cone.puesto(Int32.Parse(txtdepa.Text.ToString()), txtpuesto.Text.ToString(), txtdesc.Text.ToString(), Double.Parse(txtsal.Text.ToString()));
                    Response.Write("<script> alert(" + "'Ingresado Correctamente'" + ") </script>");
                }
                catch(Exception ex)
                {
                    Response.Write("<script> alert(" + "'Error, verifique sus datos'" + ") </script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("admin.aspx");
        }
    }
}