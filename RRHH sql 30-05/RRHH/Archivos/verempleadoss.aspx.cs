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
    public partial class verempleadoss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_vistaEmpleados", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                //cmd.Parameters.Clear();
               //cmd.Parameters.AddWithValue("@id_empleado", Int32.Parse(txtemple.Text.ToString()));
                conn.Open();
                verempleeado.DataSource = cmd.ExecuteReader();
                verempleeado.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_BuscarEmpleados", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id_empleado", Int32.Parse(txtemple.Text.ToString()));                
                conn.Open();
                verempleeado.DataSource = cmd.ExecuteReader();
                verempleeado.DataBind();
                txtemple.Text = "";
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_BuscarEmpleadosNombre", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@nombre_empleado", txtnom.Text.ToString());
                conn.Open();
                verempleeado.DataSource = cmd.ExecuteReader();
                verempleeado.DataBind();
                txtnom.Text = "";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("empleadoos.aspx");
        }
    }
}