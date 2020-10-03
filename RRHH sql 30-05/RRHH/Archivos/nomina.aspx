<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nomina.aspx.cs" Inherits="RRHH.Archivos.nomina1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PAGO </title>
     <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <div style="height: 545px">
        <form id="form1" runat="server">
        
      
        <div class="container">
          <label for="uname"><b>EMPLEADO</b></label><br />
            <asp:TextBox ID="txtemple" class="botons" runat="server" Height="5px"></asp:TextBox>
            <br />
            <label for="uname"><b>FECHA INICIO</b></label>
            <asp:TextBox ID="txtfi" class="botons" runat="server"></asp:TextBox>
            <br />
            <br />
            <label for="uname"><b>FECHA CIERRE</b></label>
            <asp:TextBox ID="txtfc" class="botons" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>COMISIONES </b></label><br />
            <asp:TextBox ID="txtcomi" class="botons" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>ANTICIPOS </b></label><br />
            <asp:TextBox ID="txtanti" class="botons" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>OTROS DESCUENTOS </b></label>
            <asp:TextBox ID="txtotros" class="botons" runat="server"></asp:TextBox>
            <br />
                
          
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="INGRESAR" OnClick="Button1_Click1" />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="CANCELAR" OnClick="Button2_Click" />
            <br />
            </div>
          </form>
</div>
</body>
</html>
