using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RRHH.Archivos
{
    public partial class diames : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {

                
                SqlCommand cmd = new SqlCommand("sp_BuscarMes", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id_empleado", Int32.Parse(txtemple.Text.ToString()));
                cmd.Parameters.AddWithValue("@fecha", txtfecha.Text.ToString());
                // com.Parameters.AddWithValue("@cantidadMayorQue", 5);

                //cmd.Parameters.AddWithValue("@id_empleado", SqlDbType.Int);
                //cmd.Parameters.AddWithValue("@fecha", SqlDbType.Date);
                conn.Open();
                VistaDias.DataSource = cmd.ExecuteReader();
                VistaDias.DataBind();
                txtemple.Text = "";
                txtfecha.Text = "";

                
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {


                SqlCommand cmd = new SqlCommand("sp_BuscarEmpleado", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.CommandText = "sp_BuscarMes";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id_empleado", Int32.Parse(txtempleado.Text.ToString()));              
                conn.Open();
                VistaDias.DataSource = cmd.ExecuteReader();
                VistaDias.DataBind();



            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("controldia.aspx");
        }
    }
}