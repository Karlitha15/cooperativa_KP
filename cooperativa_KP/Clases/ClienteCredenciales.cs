using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cooperativa_KP.Clases
{
    public class ClienteCredenciales
    {
        public int ClienteId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }

        public ClienteCredenciales() { }
        public ClienteCredenciales(int clienteId, string username, string password)
        {
            ClienteId = clienteId;
            Username = username;
            Password = password;
        }
    }
}