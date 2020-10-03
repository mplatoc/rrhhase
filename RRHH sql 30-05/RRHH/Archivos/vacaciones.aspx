<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vacaciones.aspx.cs" Inherits="RRHH.Archivos.vacaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GESTRION VACACIONES</title>
     <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <div style="height: 467px">
        
        <form id="form1" runat="server">
        
      
        <div class="container">
          <label for="uname"><b>EMPLEADO</b></label><br />
            <asp:TextBox ID="txtemple" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>FECHA INICIO</b></label><br />
            <asp:TextBox ID="txtfi" runat="server"></asp:TextBox>
            <br />
            <br />
            <label for="uname"><b>FECHA CIERRE</b></label>
            <asp:TextBox ID="txtfc" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>AUTORIZACIÓN </b></label>
            <asp:TextBox ID="txtaut" runat="server"></asp:TextBox>
            <br />
                
          
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="CALCULAR" OnClick="Button1_Click1" />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="CANCELAR" OnClick="Button2_Click" />
            <br />
            </div>
          </form>
</div>
</body>
</html>