using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cooperativa_KP.Clases
{
    public class Cliente
    {
        public int Id { get; set; }
        public string NombreCompleto { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public Cliente() { }
        public Cliente(int id, string nombreCompleto, string email, string telefono, string direccion, string userName, string password)
        {
            Id = id;
            NombreCompleto = nombreCompleto;
            Email = email;
            Telefono = telefono;
            Direccion = direccion;
            UserName = userName;
            Password = password;
        }
    }   
}