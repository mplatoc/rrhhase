<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nuevopuesto.aspx.cs" Inherits="RRHH.Archivos.nuevopuesto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PUESTO</title>
     <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <div style="height: 467px">
        <form id="form1" runat="server">
        
      
        <div class="container">
          <label for="uname"><b>DEPARTAMENTO</b></label>
            <asp:TextBox ID="txtdepa" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>NOMBRE DEL PUESTO</b></label>
            <asp:TextBox ID="txtpuesto" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>SALARIO </b></label><br />
            <asp:TextBox ID="txtsal" runat="server"></asp:TextBox>
            <br />
                
          
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="INGRESAR" OnClick="Button1_Click1" />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="CANCELAR" OnClick="Button2_Click" />
            <br />
            <a href="VerPuestos.aspx" accesskey="1" title="">VER PUESTOS</a>
            </div>
          </form>
</div>
</body>
</html>