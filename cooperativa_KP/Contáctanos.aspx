<%@ Page Title="Contáctanos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contáctanos.aspx.cs" Inherits="cooperativa_KP.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Contáctos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: url('https://static.vecteezy.com/system/resources/previews/014/960/352/non_2x/red-background-red-yellow-wallpaper-hd-stocks-images-download-free-free-photo.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
        }

    </style>
</head>

<body>
    <center><div class="container">
        <section class="contact-form">
            <h2>Contáctanos</h2>
            <form>
                <div class="form-group">
                    <asp:Label ID="Lbl_nom" runat="server" Text="Nombre:"></asp:Label>
                    <br />
                    <asp:TextBox ID="Text_nom" runat="server" Height="31px" Width="1071px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Lbl_correo" runat="server" Text="Email: "></asp:Label>
                    <br />
                    <asp:TextBox ID="Text_correo" runat="server" Height="31px" Width="1071px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Lbl_tlf" runat="server" Text="Teléfono: "></asp:Label>
                    <br />
                    <asp:TextBox ID="Text_tlf" runat="server" Height="31px" Width="1071px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Lbl_dir" runat="server" Text="Dirección: "></asp:Label>
                    <br />
                    <asp:TextBox ID="Text_dir" runat="server" Height="31px" Width="1071px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Lbl_mens" runat="server" Text="Mensaje: "></asp:Label>
                    <br />
                    <asp:TextBox ID="Text_mens" runat="server" Height="96px" Width="1071px"></asp:TextBox>
                </div>
               
                <button type="submit" class="btn-submit">Enviar</button>
            </form>
        </section>
        </div>
        </center>

         <br />
      


     <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d997.205230245413!2d-78.50274900000001!3d-0.21032700000000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91d59a1b8b191e0b%3A0x94a5736b0d8c1b8c!2sCooperativa%20de%20Ahorro%20y%20Cr%C3%A9dito%20Magisterio%20de%20Pichincha!5e0!3m2!1ses!2sec!4v1620133773296!5m2!1ses!2sec" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>


   <div class="info-table">
            <h3>Información de Contacto</h3>
            <table>
                <tr>
                    <td><i class="fas fa-map-marker-alt"></i></td>
                    <td>Dirección: Av. Siempre Viva 123, Springfield</td>
                </tr>
                <tr>
                    <td><i class="fas fa-phone-alt"></i></td>
                    <td>Teléfono: +1 (555) 123-4567</td>
                </tr>
                <tr>
                    <td><i class="fas fa-envelope"></i></td>
                    <td>Correo: contacto@cooperativa.com</td>
                </tr>
                <tr>
                    <td><i class="fas fa-globe"></i></td>
                    <td>Sitio Web: www.cooperativa.com</td>
                </tr>
            </table>
       </div>

  
        <div class="social-icons">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
        </div>
 
    <br />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>


</asp:Content>
