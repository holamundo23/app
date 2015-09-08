<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedido.aspx.cs" Inherits="demoSQLServer.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sección de pedidos</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbEstado" runat="server" Text="Estado" Visible="False" 
            BackColor="Red" Font-Bold="True" ForeColor="#FFCC99"></asp:Label>
    <br />
    <br />
        <asp:Panel ID="panelRegistrar" runat="server" Font-Bold="True" Height="286px" 
            Width="366px">
            <br />
            <fieldset style="height: 172px; width: 301px;">
                <legend>Procesar pedido</legend>
                Número de perido:<asp:TextBox ID="txtNPedido" runat="server"></asp:TextBox>
                <br />
                Código del cliente:<asp:TextBox ID="txtCodCliente" runat="server"></asp:TextBox>
                <br />
                Código del producto:<asp:TextBox ID="txtCodProducto" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnProcesar" runat="server" Text="Procesar pedido" 
                    onclick="btnProcesar_Click" />
                <br />
                <br />
            </fieldset>
            <br />
            <br />
            Otras opciones:<br />
            <asp:Button ID="btnMostrar" runat="server" Text="Mostrar todos los pedidos" 
                onclick="btnMostrar_Click" />
            <br />
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="panelMostrar" runat="server" Height="355px" Width="619px">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <a href="Default.aspx">Inicio</a>
        <br />
    
    </div>
    </form>
</body>
</html>
