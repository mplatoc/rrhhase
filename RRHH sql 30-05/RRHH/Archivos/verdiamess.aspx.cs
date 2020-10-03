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
    public partial class verdiamess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_VistaDiasEmpleado", conn);
                cmd.CommandType = CommandType.StoredProcedure;                
                cmd.Parameters.Clear();               
                cmd.Parameters.AddWithValue("@fecha", txtfec.Text.ToString());
                conn.Open();
                verdiamesemple.DataSource = cmd.ExecuteReader();
                verdiamesemple.DataBind();                
                txtfec.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("IndDePro.aspx");
        }
    }
}