﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verdiames.aspx.cs" Inherits="RRHH.Archivos.diames" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="../estilos.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="EMPLEADO"></asp:Label><br />
        <asp:TextBox ID="txtemple" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="FECHA"></asp:Label>
   <br /> 
        <asp:TextBox ID="txtfecha" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" /><br />
   <br /> 
        <asp:Label ID="Label3" runat="server" Text="EMPLEADO"></asp:Label><br />
        <asp:TextBox ID="txtempleado" runat="server"></asp:TextBox>   <br />    
        <asp:Button ID="Button2" runat="server" Text="Buscar" OnClick="Button2_Click" />
         
    
        <br />        
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="REGRESAR" /> 
    <br />
    </div>
        <asp:GridView ID="VistaDias" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid"  BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" style="margin-left: 403px">
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
