using cooperativa_KP.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cooperativa_KP
{
    public partial class vista_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Cliente cliente = (Cliente)Session["Usuario"];
                if ( cliente != null && cliente.Id != 0)
                {
                    lbid.Text = $"Código: {cliente.Id}";
                    lbnombre.Text = $"Nombre: {cliente.NombreCompleto}";
                    lbemail.Text = $"Email: {cliente.Email}";
                    lbdir.Text = $"Dirección: {cliente.Direccion}";
                    lbtelefono.Text = $"Teléfono: {cliente.Telefono}";
                }
            }
        }
    }
}