<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagoaguinaldo.aspx.cs" Inherits="RRHH.Archivos.pagoaguinaldo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PAGO NOMINA</title>
     <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
    <div style="height: 467px">
        <h1>PAGO AGUINALDO</h1>
        
      
        <div class="container">
          <label for="uname"><b>EMPLEADO</b></label><br />
            <asp:TextBox ID="txtemple" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>FECHA INICIO</b></label><br />
            <asp:TextBox ID="txtfechaini" runat="server"></asp:TextBox>
            <br />
            <br />
            <label for="uname"><b>FECHA CIERRE</b></label><br />
            <asp:TextBox ID="txtcierre" runat="server"></asp:TextBox>
            <br />            
                         
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="INGRESAR" OnClick="Button1_Click1" />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="CANCELAR" OnClick="Button2_Click" />
            <br />
            </div>
          </form>
    
</div>
</body>
</html>