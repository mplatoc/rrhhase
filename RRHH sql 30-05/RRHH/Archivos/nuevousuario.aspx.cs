using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace RRHH.Archivos
{
    public partial class nuevousuario : System.Web.UI.Page
    {
        //OracleConnection resultado = new OracleConnection("Data Source=Miguel; User Id=RRHH; Password = 1234;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (txtemple.Text == "" || txtrol.Text == "" || txtcontra.Text == "" || txtesta.Text == "")
            {
                //que se muestre un mensaje que tiene que llenar todos los campos
                Response.Write("<script> alert(" + "'No deje campos en blanco'" + ") </script>");
            }
            else
            {

                Servicio.Conexion cone = new Servicio.Conexion();
                try
                {

                    cone.nuevouser(Int32.Parse(txtemple.Text.ToString()), Int32.Parse(txtrol.Text.ToString()), Int32.Parse(txtcontra.Text.ToString()), Int32.Parse(txtesta.Text.ToString()));
                    Response.Write("<script> alert(" + "'Ingresado correctamente'" + ") </script>");
                    txtemple.Text = ""; txtrol.Text = ""; txtcontra.Text = ""; txtesta.Text = "";
                }
                catch (Exception)
                {

                    Response.Write("<script> alert(" + "'Ha ocurrido un error, verifique sus datos'" + ") </script>");

                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("admin.aspx");
        }
    }
}
