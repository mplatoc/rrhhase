<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vernomi.aspx.cs" Inherits="RRHH.Archivos.vernomi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../estilos.css" rel="stylesheet" />
    <title></title>

</head>
<body>
    <p>
        &nbsp;&nbsp;</p>
    <form id="form1" runat="server">
        <asp:Button ID="Button3" runat="server" BackColor="#0066FF" BorderStyle="Solid" Text="REGRESAR" style="top: 71px; left: 462px; height: 29px; width: 109px" OnClick="Button3_Click" />
    <div>
     <asp:Label ID="Label3" runat="server" Text="NO. NOMINA"></asp:Label>       
        <asp:TextBox ID="txtidnomi" runat="server" Height="2px" Width="120px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="BUSCAR" OnClick="Button1_Click" BackColor="#999999" BorderColor="#0099FF" Height="26px" Width="65px" />
   </div> 
        
    
    <div>
        <asp:Label ID="Label1" runat="server" Text="EMPLEADO" Height="35px" Width="75px" style="margin-left: 0px"   ></asp:Label>
        <asp:TextBox ID="txtempl" placeholder="ID EMPLEADO" runat="server" Height="5px" Width="100px"></asp:TextBox>
        <asp:TextBox ID="txtfechaa" placeholder="FECHA" runat="server" Height="5px" Width="100px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 26px" Text="BUSCAR" BackColor="#999999" BorderColor="#0099CC" />
        </div>
        <br /> 
        <asp:Label ID="Label2" runat="server" Text="MES"></asp:Label>
        <asp:TextBox ID="txtmess" runat="server" Height="5px" Width="75px"></asp:TextBox>
        <asp:Button ID="Button" runat="server" OnClick="Button_Click" Text="BUSCAR" />
        <asp:GridView ID="vernominx" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" class="view" ForeColor="Black">
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
