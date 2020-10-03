<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="RRHH.Archivos.Inicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : EarthyBlue 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20140215

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BIENVENIDO</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
<link href="../fonts.css" rel="stylesheet" />
<link href="../default.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">BIENVENIDO</a></h1>
			
			<div id="menu">
				<ul>
					<li class="active"><a href="PagoPlan.aspx" accesskey="1" title="">PAGO DE PLANILLAS</a></li>
					<li><a href="GestRecurs.aspx" accesskey="2" title="">GESTIÓN RECURSOS</a></li>
                    <li><a href="GestPrestacion.aspx" accesskey="3" title="">GESTIÓN PRESTACIONES</a></li>
					<li><a href="IndDePro.aspx" accesskey="4" title="">INDICADORES DE PRODUCTIVIDAD</a></li>
					<li><a href="admin.aspx" accesskey="5" title="">MODULO ADMINISTRATIVO</a></li>
					
                    <li><a href="Login2.aspx" accesskey="6" title="">CERRAR SESION</a></li>
				    <li></li>
				</ul>
			</div>
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
		</div>
	</div>
</div>



<div id="page-wrapper">
	<div id="welcome" class="container">
		<div class="title">
			<h2>SISTEMA DE RECURSOS HUMANOS</h2>
		</div>
		<div class="vista">
            <img src="../Imagenes/rol-departamento-RRHH-socio-consultor-interno.png" alt="Avatar" class="avatar">
		</div>    
       
</div>
</div>
    </form>
</body>
</html>
