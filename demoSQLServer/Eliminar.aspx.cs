using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demoSQLServer
{
    public partial class Eliminar : System.Web.UI.Page
    {
        Tienda tienda = new Tienda();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["tabla"] == null && Request.QueryString["id"] == null)
            {
                lbEstado.Text = "No hay nada que ver aquí!";
            }
            else
            {
                if (tienda.Eliminar(Request.QueryString["tabla"].ToString(), "CodigoProductos = " + Request.QueryString["id"].ToString()))
                {
                    lbEstado.Text = "Se ha eliminado el registro!";
                }
                else
                {
                    if (tienda.Eliminar(Request.QueryString["tabla"].ToString(), "CodigoClientes = " + Request.QueryString["id"].ToString()))
                        lbEstado.Text = "Se ha eliminado el registro!";
                    else
                        lbEstado.Text = "No se ha podido eliminar. " + tienda.MotrarError;
                }
            }
        }
    }
}