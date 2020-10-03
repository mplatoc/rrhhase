<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajas.aspx.cs" Inherits="RRHH.Archivos.nomina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DAR DE BAJA</title>
     <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <div style="height: 467px">
     <form id="form1" runat="server">                 
        
      
        <div class="container">
          <label for="uname"><b>EMPLEADO</b></label><br />
            <asp:TextBox ID="txtemple" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>FECHA AGUINALDO</b></label>
            <asp:TextBox ID="txtagui" runat="server"></asp:TextBox>
            <br />        
            <label for="uname"><b>FECHA BONO 14</b></label>
            <asp:TextBox ID="txtfecbo" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>FECHA VACIONES </b></label>
            <asp:TextBox ID="txtfechva" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>FECHA LABORES </b></label>
            <asp:TextBox ID="txtfecl" runat="server"></asp:TextBox>
            <br />
            <label for="uname"><b>MOTIVO </b></label><br />
            <asp:TextBox ID="txtmot" runat="server"></asp:TextBox>
            <br />
                
          
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="INGRESAR" OnClick="Button1_Click1" />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="CANCELAR" OnClick="Button2_Click" />
            <br />
            </div>
         </form>  
</div>
</body>
</html>
