using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cooperativa_KP.Clases
{
    public class Mensaje
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public string Detalle { get; set; }
        public Mensaje() { }
        public Mensaje(int id, string nombre, string email, string telefono, string direccion, string detalle)
        {
            Id = id;
            Nombre = nombre;
            Email = email;
            Telefono = telefono;
            Direccion = direccion;
            Detalle = detalle;
        }
    }
}