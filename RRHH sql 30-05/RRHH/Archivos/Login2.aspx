<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="RRHH.Archivos.Login2" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>INICIO DE SESION</title>
    <link href="../master.css" rel="stylesheet" />
  </head>
  <body>

    <div class="login-box">
     
      <h1>INICIAR SESIÓN</h1>
      <form runat="server">
        
        <label for="txtcorreo">USUARIO</label>
         <asp:TextBox ID="txtcorreo" runat="server" OnTextChanged="txtcorreo_TextChanged"></asp:TextBox>
        
        <label for="txtcontra">CONTRASEÑA</label>
        <asp:TextBox ID="txtcontra" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="INICIAR" OnClick="Button1_Click" />
         
           
      </form>
    </div>
  </body>
</html>