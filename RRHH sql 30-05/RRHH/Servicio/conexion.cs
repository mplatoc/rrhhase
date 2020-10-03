using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.DataAccess.Client;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

namespace RRHH.Servicio
{
    public class Conexion
    {
        public SqlConnection Co;
        public SqlCommand comando;


        public Conexion()
        {

            Co = new SqlConnection("Data Source = PRUEBARRHH.mssql.somee.com; Initial Catalog = PRUEBARRHH; User ID = mplatoc_SQLLogin_1; Password = u34r5z7jh6");

        }


        public int LOGIN(String correo, int contra)
        {
            //listo
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("select count(Usuario.id_usuario) from Usuario  INNER JOIN Empleado ON(Usuario.id_empleado = Empleado.id_empleado) where Empleado.id_empleado = (select id_empleado from Empleado where correo_empleado = '" + correo + "' ) and Usuario.contraseña_usuario =" + contra, c.Co);
            var query = c.comando.ExecuteScalar();
            int result = Int32.Parse(query.ToString());
            c.Co.Close();
            return result;
        }



        public int puesto(int iddepa, string nombrepuesto, string descripcion, double saldo)
        {
            //LISTO
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("insert into puesto values (" + iddepa + ",'" + nombrepuesto + "','" + descripcion + "'," + saldo + ")", c.Co);
            int query = Convert.ToInt32(c.comando.ExecuteScalar());
            c.Co.Close();
            return query;
        }

        public int nuevoempleado(int idpuesto, string nombreemple, string direcemple, string telemple, string corremple, string fechini, string estado)
        {
            //LISTO
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("insert into empleado values (" + idpuesto + ",'" + nombreemple + "','" + direcemple + "','" + telemple + "','" + corremple + "','" + fechini + "','" + estado + "')", c.Co);
            int query = Convert.ToInt32(c.comando.ExecuteScalar());
            c.Co.Close();
            return query;
        }

        public int controlhorasmess(int idemple, string fechaapertura, string fechacierre, int totalhorasregul, int totalhorasextra)
        {
            //LISTO
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("insert into Control_HorasMes values (" + idemple + ",'" + fechaapertura + "','" + fechacierre + "'," + totalhorasregul + "," + totalhorasextra + ")", c.Co);
            int query = Convert.ToInt32(c.comando.ExecuteScalar());
            c.Co.Close();
            return query;
        }


        public void crtdiames(int idemplea, string fechaini, string fechfin, int dianolab)
        {
            //LISTO
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("execute sp_DiasLaboradosXMes " + idemplea + ", '" + fechaini + "', '" + fechfin + "', " + dianolab + "", c.Co);
            c.comando.ExecuteScalar();
            c.Co.Close();
        }

        public void bajas(int idemple, string fechaagui, string fechabono, string vacacion, string fechafin, string motivo)
        {
            //LISTO
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("execute sp_Bajas " + idemple + ", '" + fechaagui + "', '" + fechabono + "', '" + vacacion + "', '" + fechafin + "', '" + motivo + "'", c.Co);
            c.comando.ExecuteScalar();
            c.Co.Close();
        }



        public void pagonominas(int idemple, string fechaini, string fechacierr, double comisiones, double anticipos, double otros)
        {
            //LISTO
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("execute sp_PagoNomina " + idemple + ",'" + fechaini + "','" + fechacierr + "'," + comisiones + ","+anticipos+","+otros+"", c.Co);
            c.comando.ExecuteScalar();
            c.Co.Close();
        }


        public void bono(int idemple, string fechaini, string fechcierr)
        {
            //listo
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("execute sp_PagoBono14 "+idemple+",'"+fechaini+"','"+fechcierr+"'", c.Co);
            c.comando.ExecuteScalar();
            c.Co.Close();
        }

        public void gestvaca(int idemple, string fechaini, string fechcier, string autorizacion)
        {
            //LISTO
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("execute sp_GestionVacaciones "+idemple+",'"+fechaini+"','"+fechcier+"','"+autorizacion+"'", c.Co);
            c.comando.ExecuteScalar();
            c.Co.Close();
        }

        public void pagoaguinaldo(int idemple, string fechaini, string fechcierr)
        {
            //LISTO
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("exec sp_PagoAguinaldo " + idemple + ",'" + fechaini + "','" + fechcierr + "'", c.Co);
            c.comando.ExecuteScalar();
            c.Co.Close();
        }

        public void nuevouser(int idempleado,int idrol, int contra, int estado)
        {
            //listo
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("insert into usuario values ("+idempleado+","+idrol+","+contra+","+estado+")", c.Co);
            c.comando.ExecuteScalar();
            c.Co.Close();
        }

        public void fech( int emple)
        {
            //LISTO
            Conexion c = new Conexion();
            c.Co.Open();
            c.comando = new SqlCommand("sp_BuscarMes "+emple, c.Co);
            c.comando.ExecuteScalar();
            c.Co.Close();
        }
        
    }
}

