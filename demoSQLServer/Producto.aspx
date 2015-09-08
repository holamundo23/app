<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="demoSQLServer.Producto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sección de productos</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbEstado" runat="server" Text="Estado" Visible="False" 
            BackColor="Red" Font-Bold="True" ForeColor="#FFCC99"></asp:Label>
        <br />
        <br />
        <asp:Panel ID="panelRegistro" runat="server" Height="387px" Width="464px">
            <br />
            <fieldset style="height: 231px; width: 460px">
                <legend>
                    Registro de producotos
                </legend>

                <br />
                Nombre:<asp:TextBox ID="txtNombreProducto" runat="server" Width="196px"></asp:TextBox>
                <br />
                Descripcón:<asp:TextBox ID="txtDescripcion" runat="server" Width="312px"></asp:TextBox>
                <br />
                Código del proveedor:<asp:TextBox ID="txtCoProveedor" runat="server" 
                    Width="190px"></asp:TextBox>
                <br />
                Precio por unidad:<asp:TextBox ID="txtPrecioU" runat="server"></asp:TextBox>
                <br />
                Unidades en existencia:<asp:TextBox ID="txtExistencias" runat="server" 
                    Width="109px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnReProducto" runat="server" Text="Registrar producto" 
                    onclick="btnReProducto_Click" />
                <br />
                
            </fieldset>
            <br />
            <br />
            Otras opciones:<br />
            <a href="Producto.aspx?accion=MostrarTodo">Mostrar todos los productos registrados</a><br />
            <br />
            Editar:
            <asp:TextBox ID="txtBusProducto" runat="server" ToolTip="Codigo de producto" 
                Width="191px"></asp:TextBox>
            <asp:Button ID="btnModiProducto" runat="server" Text="Modificar producto" 
                onclick="Button1_Click" />
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:Panel ID="panelModificar" runat="server" Height="409px" Width="512px">
        <br />
        <fieldset style="height: 231px; width: 460px">
                <legend>
                    Editar de producotos
                </legend>

                <br />
                Nombre:<asp:TextBox ID="txtNombreProductoM" runat="server" Width="196px"></asp:TextBox>
                <br />
                Descripcón:<asp:TextBox ID="txtDescripcionM" runat="server" Width="312px"></asp:TextBox>
                <br />
                Código del proveedor:<asp:TextBox ID="txtCoProveedorM" runat="server" 
                    Width="190px"></asp:TextBox>
                <br />
                Precio por unidad:<asp:TextBox ID="txtPrecioM" runat="server"></asp:TextBox>
                <br />
                Unidades en existencia:<asp:TextBox ID="txtPrecioUM" runat="server" 
                    Width="109px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnModificar" runat="server" Text="Guardar cambios" 
                    onclick="btnModificar_Click" />
                <br />
                
            </fieldset>
            <br />
            <br />
            ¿Desea elimiar del registro este producto?<br />
            <input type="button" onclick="javascript:confirmarEliminar();" style="width: 92px" value="Eliminar" />
            <br />
            <asp:Label ID="lbJavaScript" runat="server"></asp:Label>
            <br />
            Otras opciones:<br />
            <a href="Producto.aspx?accion=MostrarTodo">Mostrar todos los productos registrados</a><br />
            <a href="Producto.aspx">Registrar producto</a>
            <br />
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="panelMostrar" runat="server" Height="237px" Width="647px">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
     <a href="Default.aspx">Inicio</a>
    </div>
    </form>
</body>
</html>
