<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="vista_user.aspx.cs" Inherits="cooperativa_KP.vista_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="container d-flex justify-content-center">
            <div class="row">
                <h1 class="h1">Cuenta de Empleados
                </h1>
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <asp:Label ID="nombre" runat="server" Text="Cuenta de cliente" CssClass="h3"></asp:Label>
                        <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="card-link">Card link</a>
                        <a href="#" class="card-link">Another link</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
