using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace cooperativa_KP.Clases
{
    public class Cuenta
    {
        public int ID { get; set; }
        public int ID_Cliente { get; set; }
        public string Tipo { get; set; }
        public decimal Saldo { get; set; }
        private static string cadenaConexion = "Server=localhost;Database=banco;Integrated Security=True;";

        public static void CrearCuenta(int idCliente, string tipo, decimal saldo)
        {
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_CrearCuenta", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@ID_Cliente", idCliente);
                comando.Parameters.AddWithValue("@Tipo", tipo);
                comando.Parameters.AddWithValue("@Saldo", saldo);
                comando.ExecuteNonQuery();
            }
        }

        public static Cuenta LeerCuenta(int id)
        {
            Cuenta cuenta = new Cuenta();
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_LeerCuenta", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@ID", id);
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    cuenta.ID = id;
                    cuenta.ID_Cliente = reader.GetInt32(1);
                    cuenta.Tipo = reader.GetString(2);
                    cuenta.Saldo = reader.GetDecimal(3);
                }
            }
            return cuenta;
        }

        public static List<Cuenta> LeerCuentas()
        {
            
            List<Cuenta> lista = new List<Cuenta>();
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_LeerCuentas", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    Cuenta cuenta = new Cuenta();
                    cuenta.ID = reader.GetInt32(0);
                    cuenta.ID_Cliente = reader.GetInt32(1);
                    cuenta.Tipo = reader.GetString(2);
                    cuenta.Saldo = reader.GetDecimal(3);
                    lista.Add(cuenta);
                }
            }
            return lista;
        }

        public static void ActualizarCuenta(int id, string tipo, decimal saldo)
        {
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_ActualizarCuenta", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@ID", id);
                comando.Parameters.AddWithValue("@Tipo", tipo);
                comando.Parameters.AddWithValue("@Saldo", saldo);
                comando.ExecuteNonQuery();
            }
        }

        public static void EliminarCuenta(int id)
        {
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_EliminarCuenta", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@ID", id);
                comando.ExecuteNonQuery();
            }
        }
    }
}