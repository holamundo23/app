using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demoSQLServer
{
    public partial class Default : System.Web.UI.Page
    {
        Tienda tienda = new Tienda();

        protected void Page_Load(object sender, EventArgs e)
        {
            panelRegistrar.Visible = true;
            panelMostrar.Visible = false;
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            panelRegistrar.Visible = false;
            panelMostrar.Visible = true;
            GridView1.DataSource = tienda.MostrarRegistros("Pedido");
            GridView1.DataBind();
        }

        protected void btnProcesar_Click(object sender, EventArgs e)
        {
            lbEstado.Visible = true;
            string tabla = "Pedido";
            string campos = "Productos_CodigoProductos, Clientes_CodigoClientes, Numeropedido";
            string valores = "'" + txtCodProducto.Text + "', '" + txtCodCliente.Text + "', '" + txtNPedido.Text + "'";
            if (tienda.Registrar(tabla, campos, valores))
            {
                lbEstado.Text = "Se ha registrado el producto!";
            }
            else
            {
                lbEstado.Text = tienda.MotrarError;
            }
        }
    }
}