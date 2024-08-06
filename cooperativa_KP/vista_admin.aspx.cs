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
    public partial class vista_admin : System.Web.UI.Page
    {
        private SqlConnection conexion = new SqlConnection("Server=localhost;Database=banco;Integrated Security=True;");
        private List<object> list = new List<object>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                if (tabla.Rows.Count == 0)
                {
                    listar_mensajes();
                }
            }
        }


        private void listar_mensajes()
        {
            conexion.Open();
            SqlCommand comando = new SqlCommand("sp_ListarMensajes", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            var reader = comando.ExecuteReader();
            while (reader.Read())
            {
                Mensaje men = new Mensaje(
                        reader.GetInt32(0),
                        reader.GetString(1),
                        reader.GetString(2),
                        reader.GetString(3),
                        reader.GetString(4),
                        reader.GetString(5)
                    );
                list.Add(men);
            }
            conexion.Close();

            this.tabla.DataSource = list;
            this.tabla.DataBind();
        }

        private void listar_clientes()
        {
            conexion.Open();
            SqlCommand comando = new SqlCommand("sp_ListarClientes", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            var reader = comando.ExecuteReader();
            while (reader.Read())
            {
                
                list.Add(new Cliente(
                    reader.GetInt32(0),
                    reader.GetString(1),
                    reader.GetString(2),
                    reader.GetString(3),
                    reader.GetString(4),
                    reader.GetString(6),
                    reader.GetString(7)
                    ));
            }
            conexion.Close();

            this.tabla.DataSource = list;
            this.tabla.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            list.Clear();
            this.tabla.DataSource = null;
            this.tabla.DataBind();
            listar_mensajes();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            list.Clear();   
            this.tabla.DataSource = null;
            this.tabla.DataBind();
            listar_clientes();
        }
    }
}