using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RRHH.Archivos
{
    public partial class nomina1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (txtemple.Text == "" || txtfi.Text == "" || txtfc.Text == "" || txtcomi.Text == "" || txtanti.Text == "" || txtotros.Text == "")
            {
                //que se muestre un mensaje que tiene que llenar todos los campos
                Response.Write("<script> alert(" + "'No deje campos en blanco'" + ") </script>");
            }
            else
            {
                
                try
                {
                    Servicio.Conexion cone = new Servicio.Conexion();
                    cone.pagonominas(Int32.Parse(txtemple.Text.ToString()), txtfi.Text.ToString(), txtfc.Text.ToString(), Double.Parse(txtcomi.Text.ToString()), double.Parse(txtanti.Text.ToString()), Double.Parse(txtotros.Text.ToString()));
                    Response.Write("<script> alert(" + "'Ingresado Correctamente'" + ") </script>");
                    txtemple.Text = ""; txtfi.Text = ""; txtfc.Text = ""; txtcomi.Text = ""; txtanti.Text = ""; txtotros.Text = "";
                }
                catch (Exception ex)
                {
                    Response.Write("<script> alert(" + "'Error, verifique sus datos'" + ") </script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("PagoPlan.aspx");
        }
    }
}