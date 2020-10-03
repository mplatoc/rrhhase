using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RRHH.Archivos
{
    public partial class nuevoempleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (txtpuesto.Text == "" || txtnombre.Text == "" || txtdirec.Text == "" || txttel.Text == "" || txtcorre.Text == "" || txtfech.Text == "" || txtest.Text == "")
            {
                //que se muestre un mensaje que tiene que llenar todos los campos
                Response.Write("<script> alert(" + "'No deje campos en blanco'" + ") </script>");
            }
            else
            {
                Servicio.Conexion cone = new Servicio.Conexion();
                try
                {

                    cone.nuevoempleado(Int32.Parse(txtpuesto.Text.ToString()), txtnombre.Text.ToString(), txtdirec.Text.ToString(), txttel.Text.ToString(), txtcorre.Text.ToString(), txtfech.Text.ToString(), txtest.Text.ToString());
                    Response.Write("<script> alert(" + "'Ingresado Correctamente'" + ") </script>");
                    txtpuesto.Text = ""; txtnombre.Text = "";  txtdirec.Text = ""; txttel.Text = ""; txtcorre.Text = ""; txtfech.Text = ""; txtest.Text = "";

                }
                catch (Exception ex)
                {
                    Response.Write("<script> alert(" + "'Error, verifique sus datos'" + ") </script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("empleadoos.aspx");
        }
    }
}