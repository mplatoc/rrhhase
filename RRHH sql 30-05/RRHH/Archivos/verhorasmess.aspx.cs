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
    public partial class verhorasmess : System.Web.UI.Page
    {
        private object txtfech;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_VistaHorasEmpleado", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                cmd.Parameters.Clear();                
                cmd.Parameters.AddWithValue("@fecha", txtfecha.Text.ToString());
                conn.Open();
                verhrames.DataSource = cmd.ExecuteReader();
                verhrames.DataBind();                
                txtfecha.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("IndDePro.aspx");
        }
    }
}