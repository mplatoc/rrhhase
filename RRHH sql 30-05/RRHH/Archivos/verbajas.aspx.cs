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
    public partial class verbajas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_verBajas", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                //cmd.Parameters.Clear();
                //cmd.Parameters.AddWithValue("@id_empleado", Int32.Parse(txtem.Text.ToString()));
                //cmd.Parameters.AddWithValue("@fecha", txtfe.Text.ToString());
                conn.Open();
                verba.DataSource = cmd.ExecuteReader();
                verba.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("BAJASX.aspx");
        }
    }
}