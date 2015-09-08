using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace demoSQLServer
{
    public partial class Producto : System.Web.UI.Page
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
            else
            {
                if (Request.QueryString["accion"] == "MostrarTodo")
                {
                    panelModificar.Visible = false;
                    panelMostrar.Visible = true;
                    panelRegistro.Visible = false;
                    lbEstado.Visible = false;
                    GridView1.DataSource = tienda.MostrarRegistros("Productos");
                    GridView1.DataBind();
                   
                }
                else
                {

                }
            }
        }

        void llenarCampos()
        {
            GridView campos = new GridView();
            campos.DataSource = tienda.MostrarRegistrosEditar("Productos", "CodigoProductos = " + lbEstado.Text);
            campos.DataBind();

            txtNombreProductoM.Text = campos.Rows[0].Cells[1].Text;
            txtDescripcionM.Text = campos.Rows[0].Cells[2].Text;
            txtCoProveedorM.Text = campos.Rows[0].Cells[3].Text;
            txtPrecioM.Text = campos.Rows[0].Cells[4].Text;
            txtPrecioUM.Text = campos.Rows[0].Cells[5].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                if (tienda.buscarProducto("Productos", "CodigoProductos = " + txtBusProducto.Text))
                {
                    lbEstado.Text = txtBusProducto.Text;
                    panelModificar.Visible = true;
                    panelMostrar.Visible = false;
                    panelRegistro.Visible = false;
                    lbEstado.Visible = false;
                    lbJavaScript.Text = @"<script type='text/javascript'>
function confirmarEliminar()
{
     if ( confirm('¿Estas seguro que deseas eliminar este registro?') )
         location.href='Eliminar.aspx?tabla=Productos&id=" + lbEstado.Text + @"';
}
</script>";
                    llenarCampos();
                }
                else
                {
                    lbEstado.Visible = true;
                    lbEstado.Text = "No encontro el producto! No esta registrado";
                }
            
        }

        protected void btnReProducto_Click(object sender, EventArgs e)
        {
            lbEstado.Visible = true;
            string tabla = "Productos";
            string campos = "NombreProducto, DescripcionProducto, CodigoProveedor, PrecioUnidad, UnidadEnExistencia";
            string valores = "'" + txtNombreProducto.Text + "', '" + txtDescripcion.Text + "', '" + txtCoProveedor.Text + "', '" + txtPrecioU.Text+ "', '" + txtExistencias.Text + "'";
            if (tienda.Registrar(tabla, campos, valores))
            {
                lbEstado.Text = "Se ha registrado el producto!";
            }
            else
            {
                lbEstado.Text = tienda.MotrarError;
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            lbEstado.Visible = true;
            string tabla = "Productos";
            string campos = "NombreProducto = '" + txtNombreProductoM.Text + "', DescripcionProducto = '" + txtDescripcionM.Text + "', CodigoProveedor = '" + txtCoProveedorM.Text + "', PrecioUnidad = '" + txtPrecioM.Text + "', UnidadEnExistencia = '" + txtPrecioUM.Text + "'";
            string condicion = "CodigoProductos = " + lbEstado.Text;

            if (tienda.Modificar(tabla, campos, condicion))
            {
                lbEstado.Text = "Se ha modificado exitosamente!";
            }
            else
            {
                lbEstado.Text = "No se pudo modificar. " + tienda.MotrarError;
            }
        }
    }
}