<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verbono14.aspx.cs" Inherits="RRHH.Archivos.verbono14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="EMPLEADO"></asp:Label>
        <asp:TextBox ID="txtem" runat="server" Height="5px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="FECHA"></asp:Label>
        <asp:TextBox ID="txtfe" runat="server" Height="5px"></asp:TextBox>
        <asp:Button ID="Button" runat="server" OnClick="Button1_Click" Text="BUSCAR" BackColor="#999999" Height="35px" />
    <div>
        <asp:Button ID="Button1" runat="server" Text="REGRESAR" BackColor="#999999" OnClick="Button1_Click1" />
    <asp:GridView ID="verbono_14" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="margin-left: 306px">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
