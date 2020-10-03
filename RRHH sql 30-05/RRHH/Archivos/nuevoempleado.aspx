<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nuevoempleado.aspx.cs" Inherits="RRHH.Archivos.nuevoempleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PAGO NOMINA</title>
     <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <div style="height: 467px">
        
        <form id="form1" runat="server">              
        <div class="container">
          <label for="uname"><b>PUESTO</b></label><br />
            <asp:TextBox ID="txtpuesto" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>NOMBRE EMPLEADO</b></label>
            <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
            <br />
            <br />
            <label for="uname"><b>DIRECCION EMPLEADO</b></label>
            <asp:TextBox ID="txtdirec" runat="server"></asp:TextBox>
            <br />            
            <label for="uname"><b>TELEFONO EMPLEADO</b></label>
            <asp:TextBox ID="txttel" runat="server"></asp:TextBox>
            <br /> 
            <label for="uname"><b>CORREO EMPLEADO</b></label>
            <asp:TextBox ID="txtcorre" runat="server"></asp:TextBox>
            <br /> 
            <label for="uname"><b>FECHA INICIO</b></label>
            <asp:TextBox ID="txtfech" runat="server"></asp:TextBox>
            <br />            
            <label for="uname"><b>ESTADO EMPLEADO</b></label>
            <asp:TextBox ID="txtest" runat="server"></asp:TextBox>
            <br />            
                         
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="INGRESAR" OnClick="Button1_Click1" Width="100px" />&nbsp;<br />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="CANCELAR" OnClick="Button2_Click" Width="100px" />
            <br />
            </div>
          </form>
</div>
</body>
</html>
