<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verhorasmess.aspx.cs" Inherits="RRHH.Archivos.verhorasmess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../estilos.css" rel="stylesheet" />
</head>
<body>
    <h1>HORAS MES</h1>
    <form id="form1" runat="server">
    <div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="FECHA "></asp:Label>
        <asp:TextBox ID="txtfecha" runat="server" Height="5px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="BUSCAR" OnClick="Button1_Click" /><br />
        <asp:Button ID="Button2" runat="server" Text="REGRESAR" OnClick="Button2_Click" />
     <asp:GridView ID="verhrames" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" style="margin-left: 310px">
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
    </div>
    </form>
</body>
</html>
