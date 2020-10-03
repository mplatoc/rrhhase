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
    public partial class vernomi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_BuscarNomina", conn);
                cmd.CommandType = CommandType.StoredProcedure;                
                conn.Open();
                vernominx.DataSource = cmd.ExecuteReader();
                vernominx.DataBind();
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_VerNominaMes", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                cmd.Parameters.Clear();
                //cmd.Parameters.AddWithValue("@id_empleado", Int32.Parse(txtempl.Text.ToString()));
                cmd.Parameters.AddWithValue("@fecha", (txtmess.Text.ToString()));
                // cmd.Parameters.AddWithValue("@fecha", txtfe.Text.ToString());
                conn.Open();
                vernominx.DataSource = cmd.ExecuteReader();
                vernominx.DataBind();

                txtempl.Text = "";
                txtmess.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_BuscarNominaID", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id_nomina", Int32.Parse(txtidnomi.Text.ToString()));                
                // cmd.Parameters.AddWithValue("@fecha", txtfe.Text.ToString());
                conn.Open();
                vernominx.DataSource = cmd.ExecuteReader();
                vernominx.DataBind();
                txtidnomi.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_VerPagoMes", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id_empleado", Int32.Parse(txtempl.Text.ToString()));
                cmd.Parameters.AddWithValue("@mes", DateTime.Parse( txtfechaa.Text.ToString()));
                conn.Open();
                vernominx.DataSource = cmd.ExecuteReader();
                vernominx.DataBind();
                txtidnomi.Text = "";
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("PagoPlan.aspx");
        }
    }
}