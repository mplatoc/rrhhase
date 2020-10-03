<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlDiaMes.aspx.cs" Inherits="RRHH.Archivos.ControlDiaMes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CONTROL DIA MES</title>
     <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <div style="height: 467px">
        <form id="form1" runat="server">
        
      
        <div class="container">
            <label for="uname"><b>EMPLEADO</b></label>
            <br />
            <asp:TextBox ID="txtidem" runat="server" CssClass="box" Width="175px" Height="5px"></asp:TextBox>
            <br />
            <label for="uname"><b>FECHA INICIO</b></label><br />
            <asp:TextBox ID="txtfio" runat="server" CssClass="box" Width="175px" Height="5px" ></asp:TextBox>
            <br />
            
            <label for="uname"><b>FECHA FIN</b></label><br />
            <asp:TextBox ID="txtfin" runat="server" CssClass="box" Width="175px" Height="5px" ></asp:TextBox>
            <br />
            <label for="uname"><b>DIAS NO LABORADOS </b></label><br />
            <asp:TextBox ID="txtdino" runat="server" CssClass="box" Width="175px" Height="5px" ></asp:TextBox>
            <br />                
          
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="INGRESAR" OnClick="Button1_Click1" Width="100px" /><br />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="CANCELAR" OnClick="Button2_Click" Width="100px" />
            <br />
            </div>
          </form>
</div>
</body>
</html>