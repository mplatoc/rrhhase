<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INGCONTROLHORASMES.aspx.cs" Inherits="RRHH.Archivos.INGCONTROLHORASMES" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GESTION HORAS</title>
     <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <div style="height: 467px">
        
        <form id="form1" runat="server">
        
      
        <div class="container">
          <label for="uname"><b>EMPLEADO</b></label><br />
            <asp:TextBox ID="txtemple" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>FECHA APERTURA</b></label>
            <asp:TextBox ID="txtfaper" runat="server"></asp:TextBox>
            <br />
            <br />
            <label for="uname"><b>FECHA CIERRE</b></label>
            <asp:TextBox ID="txtfcier" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>TOTAL HORAS REGULARES </b></label>
            <asp:TextBox ID="txthore" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>TOTAL HORAS EXTRAS </b></label>
            <asp:TextBox ID="txthe" runat="server"></asp:TextBox>
            <br />
                
          
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="INGRESAR" OnClick="Button1_Click1" Width="100px" /><br />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="CANCELAR" OnClick="Button2_Click" Width="100px" />
            <br />
            </div>
          </form>
</div>
</body>
</html>
