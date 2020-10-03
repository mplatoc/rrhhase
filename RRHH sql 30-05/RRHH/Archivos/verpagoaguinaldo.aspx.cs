using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace RRHH.Archivos
{
    public partial class verpagoaguinaldo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_BuscarPagoAguinaldo", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id_empleado", Int32.Parse(txtctrlagui.Text.ToString()));
                cmd.Parameters.AddWithValue("@fecha", txtfech.Text.ToString());
                conn.Open();
                vercontrolaguinaldo.DataSource = cmd.ExecuteReader();
                vercontrolaguinaldo.DataBind();
                txtctrlagui.Text = "";
                txtfech.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("PAGOAGUINALDOX.aspx");
        }
    }
}