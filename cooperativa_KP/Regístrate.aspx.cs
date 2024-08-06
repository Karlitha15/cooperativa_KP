using cooperativa_KP.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cooperativa_KP
{
    public partial class About : Page
    {
        private Cliente c = new Cliente();
        private ClienteCredenciales credenciales = new ClienteCredenciales();
        private SqlConnection conexion = new SqlConnection("Server=localhost;Database=banco;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txnombre.Attributes["placeholder"] = "Nombre";
                txemail.Attributes["placeholder"] = "Email";
                txtelefono.Attributes["placeholder"] = "Teléfono";
                txdir.Attributes["placeholder"] = "Dirección";
                txpassword.Attributes["placeholder"] = "Contraseña";
                txuser.Attributes["placeholder"] = "Nombre de usuario";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack) {
                try
                {
                    c.NombreCompleto = txnombre.Text;
                    c.Email = txemail.Text;
                    c.Telefono = txtelefono.Text;
                    c.Direccion = txdir.Text;
                    credenciales.Username = txuser.Text;
                    credenciales.Password = txpassword.Text;

                    // Agregar cliente

                    conexion.Open();
                    SqlCommand comando = new SqlCommand("sp_AgregarCliente", conexion);
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@NombreCompleto", c.NombreCompleto);
                    comando.Parameters.AddWithValue("@Email", c.Email);
                    comando.Parameters.AddWithValue("@Telefono", c.Telefono);
                    comando.Parameters.AddWithValue("@Direccion", c.Direccion);
                    comando.ExecuteNonQuery();

                    conexion.Close();

                    //obtener id del cliente registrado
                    conexion.Open();
                    SqlCommand sql = new SqlCommand("ObtenerUltimoId", conexion);
                    sql.CommandType = CommandType.StoredProcedure;
                    SqlDataReader reader = sql.ExecuteReader();
                    if (reader.Read())
                    {

                        credenciales.ClienteId = reader.GetInt32(reader.GetOrdinal("UltimoId"));
                    }
                    conexion.Close();
                    // Agregar credenciales
                    conexion.Open();
                    SqlCommand comando2 = new SqlCommand("sp_CrearCredenciales", conexion);
                    comando2.CommandType = CommandType.StoredProcedure;
                    comando2.Parameters.AddWithValue("@ClienteId", credenciales.ClienteId);
                    comando2.Parameters.AddWithValue("@Username", credenciales.Username);
                    comando2.Parameters.AddWithValue("@Password", credenciales.Password);
                    comando2.ExecuteNonQuery();
                    conexion.Close();

                }
                catch(Exception ex) {
                    Console.WriteLine(ex.Message);
                }
            }
        }
    }
}