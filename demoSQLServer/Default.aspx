<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="demoSQLServer.Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Bienvenido!"></asp:Label>
        <br />
        <br />
        Haga clic en la sección que quiere trabajar:<br />
        <a href="Pedido.aspx">Pedidos</a><br />
        <a href="Cliente.aspx">Clientes</a><br />
        <a href="Producto.aspx">Productos</a>
        <br />
    
    </div>
    </form>
</body>
</html>
