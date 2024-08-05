<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="cooperativa_KP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>

<html lang="es">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">


</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-12 text-center my-5">
                <h2>Bienvenidos a la Cooperativa Magisterio de Pichincha</h2>
                <p>Ofrecemos una variedad de servicios financieros para satisfacer sus necesidades. Nuestro objetivo es proporcionar soluciones rápidas y efectivas para mejorar su calidad de vida.</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">
                <div class="product-card">
                    <img src="https://scontent.fuio3-1.fna.fbcdn.net/v/t39.30808-6/328532307_223338000157301_4851817297414252290_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=dRocdgyYxw4Q7kNvgEL4Y1J&_nc_ht=scontent.fuio3-1.fna&oh=00_AYA9JPvipTAFxJKVsd6Aj-Vj1QMBjkUkqRp34GtEo_xOtA&oe=66B491BA" alt="Product 1">
                    <h5> ACCEDE A NUESTRO CRÉDITO ORDINARIO </h5>
                    <center><p class="price">$30 000.00 <span class="original-price"></span></p></center>
                </div>
            </div>
            <div class="col-md-3">
                <div class="product-card">
                    <img src="https://scontent.fuio3-1.fna.fbcdn.net/v/t39.30808-6/334536313_922776835588628_3393418778228297041_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=127cfc&_nc_ohc=ikZXhHH3VXsQ7kNvgEpu__S&_nc_ht=scontent.fuio3-1.fna&oh=00_AYA8qgetYBUnsjpi30sEuNd9iU2LBfGJBoPgE6LdC-69Cg&oe=66B4AFE2" alt="Product 2">
                    <h5>ACCEDE A CRÉDITOS OCASIONALES</h5>
                    <center><p class="price">$5 000.00 <span class="original-price"></span></p></center>
                </div>
            </div>
            <div class="col-md-3">
                <div class="product-card">
                    <img src="https://scontent.fuio3-1.fna.fbcdn.net/v/t39.30808-6/334495243_702753748197522_3526247087642671386_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=127cfc&_nc_ohc=OmnIpDtPR_IQ7kNvgEfiKj4&_nc_ht=scontent.fuio3-1.fna&oh=00_AYAlm_jgbDVONXUo0sl8McFuuvVJ0f_ghcO2_m6kASc_cQ&oe=66B4A798" alt="Product 3">
                    <h5>CRÉDITO OCACIONAL SOCIOS </h5>
                    <center><p class="price">$1 500.00 <span class="original-price"></span></p></center>
                </div>
            </div>
            <div class="col-md-3">
                <div class="product-card">
                    <img src="https://scontent.fuio3-1.fna.fbcdn.net/v/t39.30808-6/332764212_1620656931735816_6717588642743308058_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=ASvvjN5XmEcQ7kNvgH78NCZ&_nc_ht=scontent.fuio3-1.fna&oh=00_AYA1Lfn7_D9XRL9cF9U3DAp3uM9xfIGwoBiRRCC26hB8eQ&oe=66B48C79" alt="Product 4">
                    <h5>CRÉDITOS SIN GARANTES </h5>
                    <center><p class="price">$5000.00 <span class="original-price"></span></p></center>
                </div>
            </div>
        </div>
    </div>


    <footer>
        <div class="social-icons">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>


</asp:Content>
