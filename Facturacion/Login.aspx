<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Facturacion.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sistema de Facturación</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/signin.css" rel="stylesheet" />
</head>
<body>
    <div class="container">

        <form id="form1" class="form-signin" runat="server">
            <h2 class="form-signin-heading">Ingrese al sistema</h2>
            <asp:TextBox ID="txtUsuario" runat="server" class="form-control" placeholder="Digite su usuario" MaxLength="10"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Digite la clave" MaxLength="10" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnIngresar" class="btn btn-lg btn-primary btn-block" runat="server" Text="Ingresar" />
        </form>

    </div>
    <!-- /container -->
</body>
</html>
