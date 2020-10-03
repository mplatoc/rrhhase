using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Oracle.DataAccess.Client;

namespace RRHH.Archivos
{
    public partial class emple : System.Web.UI.Page
    {

        //    OracleConnection resultado = new OracleConnection("Data Source=Miguel; User Id=RRHH; Password = 1234;");
        //    protected void Page_Load(object sender, EventArgs e)
        //    {
        //    //    OracleDataAdapter ms = new OracleDataAdapter("select Empleado.id_empleado, Empleado.nombre_empleado, Puesto.nombre_puesto, Departamento.nombre_departamento, fecha_inicio, fecha_fin, Puesto.salario_mensual from Empleado inner join Puesto on Puesto.id_puesto = Empleado.id_puesto inner join Departamento on Departamento.id_departamento = Puesto.id_departamento", resultado);                       
        //    //    DataTable dt = new DataTable();
        //    //    ms.Fill(dt);
        //    //    this.GridView1.DataSource = dt;
        //    //    GridView1.DataBind();
        //    //}

        //    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //    {

        //    }
    }
}