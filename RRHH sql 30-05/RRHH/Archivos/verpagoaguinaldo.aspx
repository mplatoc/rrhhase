<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verpagoaguinaldo.aspx.cs" Inherits="RRHH.Archivos.verpagoaguinaldo" Theme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
        EMPLEADO<asp:TextBox ID="txtctrlagui" runat="server"></asp:TextBox>
    </div>
        <asp:Label ID="Label2" runat="server" Text="FECHA"></asp:Label>
        <asp:TextBox ID="txtfech" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" BackColor="#0066FF" BorderColor="#3399FF" /><br />
        <asp:Button ID="Button2" runat="server" Text="REGRESAR" OnClick="Button2_Click" />
    <asp:GridView ID="vercontrolaguinaldo" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" style="margin-left: 306px" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </form>
</body>
</html>
