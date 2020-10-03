<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verempleadoss.aspx.cs" Inherits="RRHH.Archivos.verempleadoss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <link href="../estilos.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button2" runat="server" Text="REGRESAR" OnClick="Button2_Click" BackColor="#999999" BorderColor="Black" Height="35px" />
    </div>
        <asp:Label ID="EMPLEADO" runat="server" Text="EMPLEADO"></asp:Label>
        <asp:TextBox ID="txtemple" runat="server"></asp:TextBox>        
        <asp:Button ID="BUSCAR" runat="server" OnClick="Button1_Click" Text="BUSCAR" BackColor="#999999" BorderColor="Black" />

       
        <br />
        <asp:Label ID="NOMBRE" runat="server" Text="NOMBRE EMPLEADO"></asp:Label>

        <asp:TextBox ID="txtnom" runat="server"></asp:TextBox>        <asp:Button ID="Button1" runat="server" Text="BUSCAR" OnClick="Button1_Click1" BackColor="#999999" BorderColor="Black" />

        

       
        <asp:GridView ID="verempleeado" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" style="margin-left: 212px">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </form>
</body>
</html>
