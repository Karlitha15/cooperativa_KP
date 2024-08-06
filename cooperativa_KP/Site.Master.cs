using cooperativa_KP.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cooperativa_KP
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void iniciosesion_Click(object sender, EventArgs e)
        {
            Cliente cl = (Cliente)Session["Usuario"];
            if (cl == null || cl.Id == 0)
            {
                Response.Redirect("Inicio_de_Sesion.aspx");
                
            }
            else
            {
                if(cl.NombreCompleto == "karlaadmin")
                {
                    Response.Redirect("vista_admin.aspx");
                }
                else
                {
                    Response.Redirect("vista_user.aspx");
                }
                
            }
        }
    }
}