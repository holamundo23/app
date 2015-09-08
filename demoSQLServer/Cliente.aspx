<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="demoSQLServer.Cliente" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sección de clientes</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lbEstado" runat="server" Text="Estado" Visible="False" 
            BackColor="Red" Font-Bold="True" ForeColor="#FFCC99"></asp:Label>
        <br />
    
        <br />
        <asp:Panel ID="panelRegistro" runat="server" Height="446px" Width="464px">
            <br />
            <fieldset style="height: 301px; width: 460px">
                <legend>
                    Registro de clientes
                </legend>

                <br />
                Empresa:<asp:TextBox ID="txtEmpresa" runat="server" Width="192px"></asp:TextBox>
                <br />
                Nombre:<asp:TextBox ID="txtNombreCliente" runat="server" Width="196px"></asp:TextBox>
                <br />
                Apellido:<asp:TextBox ID="txtApellidoCliente" runat="server" Width="184px"></asp:TextBox>
                <br />
                Puesto:<asp:TextBox ID="txtPuesto" runat="server" Width="189px"></asp:TextBox>
                <br />
                Dirección:<asp:TextBox ID="txtDireccion" runat="server" Width="312px"></asp:TextBox>
                <br />
                Población:<asp:TextBox ID="txtPoblacion" runat="server" Width="190px"></asp:TextBox>
                <br />
                Teléfono:<asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                <br />
                Código Postal:<asp:TextBox ID="txtCoPostal" runat="server" Width="109px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnReCliente" runat="server" Text="Registrar cliente" 
                    onclick="btnReCliente_Click" />
                <br />
                
            </fieldset>
            <br />
            <br />
            Otras opciones:<br />
            <a href="Cliente.aspx?accion=MostrarTodo">Mostrar todos los clientes</a><br />
            <br />
            Editar:
            <asp:TextBox ID="txtBusCliente" runat="server" ToolTip="Codigo del cliente" 
                Width="191px"></asp:TextBox>
            <asp:Button ID="btnBusCliente" runat="server" Text="Modificar cliente" 
                onclick="btnBusCliente_Click" />
                
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="panelModificar" runat="server" Height="475px" Width="481px">
        <br />
        <fieldset style="height: 301px; width: 460px">
                <legend>
                    Editar de clientes
                </legend>

                <br />
                Empresa:<asp:TextBox ID="txtEmpresaM" runat="server" Width="192px"></asp:TextBox>
                <br />
                Nombre:<asp:TextBox ID="txtNombreClienteM" runat="server" Width="196px"></asp:TextBox>
                <br />
                Apellido:<asp:TextBox ID="txtApellidoClienteM" runat="server" Width="184px"></asp:TextBox>
                <br />
                Puesto:<asp:TextBox ID="txtPuestoM" runat="server" Width="189px"></asp:TextBox>
                <br />
                Dirección:<asp:TextBox ID="txtDireccionM" runat="server" Width="312px"></asp:TextBox>
                <br />
                Población:<asp:TextBox ID="txtPoblacionM" runat="server" Width="190px"></asp:TextBox>
                <br />
                Teléfono:<asp:TextBox ID="txtTelefonoM" runat="server"></asp:TextBox>
                <br />
                Código Postal:<asp:TextBox ID="txtCoPostalM" runat="server" Width="109px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnModiCliente" runat="server" Text="Guardar cambios" 
                    onclick="btnModiCliente_Click" />
                <br />
                
            </fieldset>
            <br />
            <br />
            <asp:Label ID="lbJavaScript" runat="server"></asp:Label>
            ¿Desea elimiar del registro este producto?<br />
            <input type="button" onclick="javascript:confirmarEliminar();" style="width: 92px" value="Eliminar" />
            <br />
            <br />
            Otras opciones:<br />
            <a href="Cliente.aspx?accion=MostrarTodo">Mostrar todos los clientes</a><br />
            <a href="Cliente.aspx">Registrar cliente</a><br />
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:Panel ID="panelMostrar" runat="server" Height="301px" Width="599px">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
    
     <a href="Default.aspx">Inicio</a>
    </div>
    </form>
</body>
</html>
