using cooperativa_KP.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
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
        private static List<object> list = new List<object>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Cliente u = (Cliente)Session["Usuario"];
            if ( u == null || u.UserName != "karlaadmin")
            {
                Response.Redirect("login_admin.aspx");
            }
            else
            {
                if (Page.IsPostBack)
                {
                    if (tabla.Rows.Count == 0)
                    {
                        listar_mensajes();
                    }
                    limpiarform();
                }
                if (DropDownList1.Items.Count == 0)
                {
                    listar_clientes_combo();
                }
            }
            
        }


        private void listar_mensajes()
        {
            list.Clear();
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
            list.Clear();
            conexion.Open();
            SqlCommand comando = new SqlCommand("sp_ListarClientes", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            var reader = comando.ExecuteReader();
            while (reader.Read())
            {
                Cliente c = new Cliente(
                    reader.GetInt32(0),
                    reader.GetString(1),
                    reader.GetString(2),
                    reader.GetString(3),
                    reader.GetString(4),
                    reader.GetString(6),
                    reader.GetString(7)
                    );
                list.Add(c);
            }
            conexion.Close();

            this.tabla.DataSource = list;
            this.tabla.DataBind();
        }

        private void listar_clientes_combo()
        {
            conexion.Open();
            SqlCommand comando = new SqlCommand("sp_ListarClientes", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            var reader = comando.ExecuteReader();
            while (reader.Read())
            {
                ListItem item = new ListItem();
                item.Text = reader.GetString(1);
                int valor = reader.GetInt32(0);
                item.Value = valor.ToString();
                this.DropDownList1.Items.Add(item);
            }
            conexion.Close();

        }

        private void listar_cuentas()
        {
            list.Clear();
            this.tabla.DataSource = null;
            this.tabla.DataBind();
            var lista = Cuenta.LeerCuentas();
            foreach(Cuenta c in lista){
                list.Add(c);
            }
            tabla.DataSource = list;
            tabla.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.tabla.DataSource = null;
            this.tabla.DataBind();
            listar_mensajes();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {  
            this.tabla.DataSource = null;
            this.tabla.DataBind();
            listar_clientes();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            listar_cuentas();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                Cuenta.CrearCuenta(Convert.ToInt32(DropDownList1.SelectedItem.Value), DropDownList2.SelectedItem.Value, Convert.ToDecimal(txsaldo.Text));
                limpiarform();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private void limpiarform()
        {
            this.DropDownList1.SelectedIndex = 0;
            this.DropDownList2.SelectedIndex = 0;
            this.txsaldo.Text = "0";
        }

        protected void tabla_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                if (list.Count != 0)
                {

                    var item = list[0].GetType();
                    if (item == typeof(Cliente))
                    {

                    }
                    else if (item == typeof(Mensaje))
                    {
                        eliminarMensaje(id);
                    }
                    else if (item == typeof(Cuenta))
                    {
                        eliminarCuenta(id);
                    }
                    else
                    {
                        Response.Write("Es un objeto de otro tipo: " + item.Name);
                    }
                }

            }
            if (e.CommandName == "Eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                // Código para eliminar la fila con ID = id
                if(list.Count != 0)
                {
                    
                    var item = list[0].GetType();
                    if (item == typeof(Cliente))
                    {
                        eliminarCliente(id);
                        listar_clientes();
                    }else if(item == typeof(Mensaje))
                    {
                        eliminarMensaje(id);
                        listar_mensajes();
                    }else if(item == typeof(Cuenta))
                    {
                        eliminarCuenta(id);
                        listar_cuentas();
                    }
                    else
                    {
                        Response.Write("Es un objeto de otro tipo: " + item.Name);
                    }
                }

            }
        }

        private void eliminarCliente(int id)
        {

            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_EliminarCliente", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@Id", id);
                comando.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        private void eliminarMensaje(int id)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_EliminarMensaje", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@Id", id);
                comando.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        private void eliminarCuenta(int id)
        {
            try
            {
                Cuenta.EliminarCuenta(id);
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}