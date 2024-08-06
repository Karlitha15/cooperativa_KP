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
    public partial class login_admin : System.Web.UI.Page
    {
        public Cliente c;
        private string pass = "";
        private SqlConnection conexion = new SqlConnection("Server=localhost;Database=banco;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (c == null)
                {

                    c = new Cliente();

                    c.UserName = this.txusuario.Text;
                    c.Password = this.txpassword.Text;

                    conexion.Open();
                    SqlCommand sql = new SqlCommand("sp_leer_password", conexion);
                    sql.CommandType = CommandType.StoredProcedure;
                    sql.Parameters.AddWithValue("@Nombre", c.UserName);
                    SqlDataReader reader = sql.ExecuteReader();
                    if (reader.Read())
                    {

                        pass = reader.GetString(2);
                        c.Id = reader.GetInt32(0);
                    }
                    reader.Close();



                    if (c.Password == pass)
                    {
                        Session["Usuario"] = c;
                        SqlCommand comando = new SqlCommand("sp_ListarClientePorId", conexion);
                        comando.CommandType = CommandType.StoredProcedure;
                        comando.Parameters.AddWithValue("@Id", c.Id);
                        SqlDataReader reader2 = comando.ExecuteReader();
                        if (reader2.Read())
                        {
                            c.Id = reader2.GetInt32(0);
                            c.NombreCompleto = reader2.GetString(1);
                            c.Email = reader2.GetString(2);
                            c.Telefono = reader2.GetString(3);
                            c.Direccion = reader2.GetString(4);
                        }
                        conexion.Close();
                        if(c.UserName == "karlaadmin")
                        {
                            Response.Redirect("vista_admin.aspx");
                        }
                        
                    }



                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }

}