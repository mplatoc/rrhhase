using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using System.Data;

namespace RRHH.Archivos
{
    public partial class VerUser : System.Web.UI.Page
    {
        //OracleConnection resultado = new OracleConnection("Data Source=Miguel; User Id=RRHH; Password = 1234;");
        protected void Page_Load(object sender, EventArgs e)
        {
            //OracleDataAdapter ms = new OracleDataAdapter("select Usuario.id_usuario, Empleado.nombre_empleado, Puesto.nombre_puesto, Empleado.id_empleado, Rol.descripcion_rol, Usuario.estado_usuario from Usuario inner join Empleado on Empleado.id_empleado = Usuario.id_empleado inner join Rol on Rol.id_rol = Usuario.id_rol inner join Puesto on Puesto.id_puesto = Empleado.id_puesto", resultado);
            //DataTable dt = new DataTable();
            //ms.Fill(dt);
            //this.GridView1.DataSource = dt;
            //GridView1.DataBind();
            //GridView1.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("admin.aspx");
        }
    }
}