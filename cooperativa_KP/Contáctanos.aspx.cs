using cooperativa_KP.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cooperativa_KP
{
    public partial class Contact : Page
    {
        private Mensaje m = new Mensaje();
        private SqlConnection conexion = new SqlConnection("Server=localhost;Database=banco;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                m.Nombre = Text_nom.Text;
                m.Email = Text_correo.Text;
                m.Telefono = Text_tlf.Text;
                m.Direccion = Text_dir.Text;
                m.Detalle = Text_mens.Text;
                //Insertar el mensaje
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_AgregarMensaje", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@Nombre", m.Nombre);
                comando.Parameters.AddWithValue("@Email", m.Email);
                comando.Parameters.AddWithValue("@Telefono", m.Telefono);
                comando.Parameters.AddWithValue("@Direccion", m.Direccion);
                comando.Parameters.AddWithValue("@Detalle", m.Detalle);
                comando.ExecuteNonQuery();

            }
            catch (Exception ex) {
                Console.WriteLine(ex.Message.ToString());
            }

        }
    }
}