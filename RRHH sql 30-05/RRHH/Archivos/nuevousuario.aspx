<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nuevousuario.aspx.cs" Inherits="RRHH.Archivos.nuevousuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NUEVO USUARIO</title>
     <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <div style="height: 467px">
        <form id="form1" runat="server">
        
      
        <div class="container">
          <label for="uname"><b>EMPLEADO</b></label>
            <br />
            <asp:TextBox ID="txtemple" runat="server" CssClass="box" Height="5px" Width="150px"></asp:TextBox>
            <br />
            <label for="uname"><b>ROL</b></label><br />
            <asp:DropDownList ID="txtrol" runat="server" CssClass="box" DataSourceID="SqlDataSource1" DataTextField="id_rol" DataValueField="id_rol" Width="150px"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=PRUEBARRHH.mssql.somee.com;Initial Catalog=PRUEBARRHH;User ID=mplatoc_SQLLogin_1;Password=u34r5z7jh6" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [descripcion_rol], [id_rol] FROM [Rol]"></asp:SqlDataSource>
            <br />
            <br />
            <label for="psw"><b>CONTRASEÑA</b></label><br />
            <asp:TextBox ID="txtcontra" runat="server" CssClass="box" Height="5px" Width="150px" ></asp:TextBox>
            <br />
            <label for="uname"><b>ESTADO </b></label><br />
            <asp:TextBox ID="txtesta" runat="server" CssClass="box" Height="5px" Width="150px" ></asp:TextBox>                                           
            <br />
                
          
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="INGRESAR" OnClick="Button1_Click1" Width="100px" />
            <br />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="CANCELAR" OnClick="Button2_Click" Width="100px" />
            <br />
           <a href="VerUser.aspx" accesskey="1" title="">VER USUARIOS</a>
            </div>
             
          </form>
        
</div>
</body>
</html>