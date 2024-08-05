<%@ Page Title="Regístrate" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Regístrate.aspx.cs" Inherits="cooperativa_KP.About" %>

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
       <div class="row justify-content-center bg-appointment mx-0" style="background-image: url(''); background-size: cover; background-position: center;">
    <div class="col-lg-6 py-5">
        <div class="p-5 my-5" style="background: rgba(33, 30, 28, 0.7);">
            <h1 class="text-white text-center mb-4">Registrarse</h1>
            <form>
                <div class="form-row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <input type="text" class="form-control bg-transparent p-4" placeholder="Nombre y Apellido" required="required" />
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <input type="email" class="form-control bg-transparent p-4" placeholder="Email" required="required" />
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="date" id="date" data-target-input="nearest">
                                <input type="text" class="form-control bg-transparent p-4 datetimepicker-input" placeholder="Teléfono" data-target="#date" data-toggle="datetimepicker"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="time" id="time" data-target-input="nearest">
                                <input type="text" class="form-control bg-transparent p-4 datetimepicker-input" placeholder="Dirección" data-target="#time" data-toggle="required"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-sm-6">
                        <button class="btn btn-primary btn-block" type="submit" style="height: 47px;">Registrar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
    </html>

</asp:Content>
