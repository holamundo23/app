using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demoSQLServer
{
    public partial class Cliente : System.Web.UI.Page
    {
        Tienda tienda = new Tienda();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["accion"] == null)
            {
                panelModificar.Visible = false;
                panelMostrar.Visible = false;
                panelRegistro.Visible = true;
            }
            else {
                if (Request.QueryString["accion"] == "MostrarTodo")
                {
                    panelModificar.Visible = false;
                    panelMostrar.Visible = true;
                    panelRegistro.Visible = false;
                    GridView1.DataSource = tienda.MostrarRegistros("Clientes");
                    GridView1.DataBind();
                }
                else
                {

                }
            }
        }

        void rellenarCampos()
        {
            GridView campos = new GridView();
            lbEstado.Text = txtBusCliente.Text;
            campos.DataSource = tienda.MostrarRegistrosEditar("Clientes", "CodigoClientes = " + txtBusCliente.Text);
            campos.DataBind();
            txtEmpresaM.Text = campos.Rows[0].Cells[1].Text;
            txtNombreClienteM.Text = campos.Rows[0].Cells[2].Text;
            txtApellidoClienteM.Text = campos.Rows[0].Cells[3].Text;
            txtPuestoM.Text = campos.Rows[0].Cells[4].Text;
            txtPoblacionM.Text = campos.Rows[0].Cells[5].Text;
            txtDireccionM.Text = campos.Rows[0].Cells[6].Text;
            txtTelefonoM.Text = campos.Rows[0].Cells[7].Text;
            txtCoPostalM.Text = campos.Rows[0].Cells[8].Text;
        }

        protected void btnBusCliente_Click(object sender, EventArgs e)
        {
            if (tienda.buscarProducto("Clientes", "CodigoClientes = " + txtBusCliente.Text))
            {
                panelModificar.Visible = true;
                panelMostrar.Visible = false;
                panelRegistro.Visible = false;
                rellenarCampos();
                lbJavaScript.Visible = true;
                lbJavaScript.Text = @"<script type='text/javascript'>
function confirmarEliminar()
{
     if ( confirm('¿Estas seguro que deseas eliminar este registro?') )
         location.href='Eliminar.aspx?tabla=Clientes&id=" + lbEstado.Text + @"';
}
</script>";
            }
            else
            {
                lbEstado.Visible = true;
                lbEstado.Text = "No se ha encontrado el cliente";
            }

        }

        protected void btnReCliente_Click(object sender, EventArgs e)
        {
            lbEstado.Visible = true;

            string tabla = "Clientes";
            string campos = "Empresa, NombreCliente, ApellidoCliente, Puesto, Direccion, Poblacion, Telefono, CP";
            string valores = "'" + txtEmpresa.Text + "', '" + txtNombreCliente.Text + "', '" + txtApellidoCliente.Text + "', '" + txtPuesto.Text + "', '" + txtDireccion.Text + "', '" + txtPoblacion.Text + "', '" + txtTelefono.Text + "', '" + txtCoPostal.Text + "'";

            if (tienda.Registrar(tabla, campos, valores) == true)
            {
                lbEstado.Text = "Se ha registrado exitosamente!";
            }
            else
            {
                lbEstado.Text = tienda.MotrarError;
            }
        }

        protected void btnModiCliente_Click(object sender, EventArgs e)
        {
            lbEstado.Visible = true;

            string campos = "Empresa = '" + txtEmpresaM.Text + "', NombreCliente = '" + txtNombreClienteM.Text + "', ApellidoCliente = '" + txtApellidoClienteM.Text + "', Puesto = '" + txtPuestoM.Text + "', Direccion = '" + txtDireccionM.Text + "', Poblacion = '" + txtPoblacionM.Text + "', Telefono = '" + txtTelefonoM.Text + "', CP = '" + txtCoPostalM.Text + "'";

            if (tienda.Modificar("Clientes", campos, "CodigoClientes = " + lbEstado.Text) == true)
            {
                lbEstado.Text = "Se ha modifico exitosamente!";
            }
            else
            {
                lbEstado.Text = tienda.MotrarError;
            }
        }
    }
}