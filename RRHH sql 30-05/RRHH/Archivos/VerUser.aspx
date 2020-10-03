<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerUser.aspx.cs" Inherits="RRHH.Archivos.VerUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../estilos.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>USUARIOS</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="REGRESAR" OnClick="Button1_Click" />
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" style="margin-left: 222px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
                <asp:BoundField DataField="nombre_empleado" HeaderText="nombre_empleado" SortExpression="nombre_empleado" />
                <asp:BoundField DataField="nombre_puesto" HeaderText="nombre_puesto" SortExpression="nombre_puesto" />
                <asp:BoundField DataField="id_empleado" HeaderText="id_empleado" InsertVisible="False" ReadOnly="True" SortExpression="id_empleado" />
                <asp:BoundField DataField="descripcion_rol" HeaderText="descripcion_rol" SortExpression="descripcion_rol" />
                <asp:BoundField DataField="estado_usuario" HeaderText="estado_usuario" SortExpression="estado_usuario" />
            </Columns>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=PRUEBARRHH.mssql.somee.com;Initial Catalog=PRUEBARRHH;User ID=mplatoc_SQLLogin_1;Password=u34r5z7jh6" ProviderName="System.Data.SqlClient" SelectCommand="sp_VistaUsuarios" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </form>
</body>
</html>
