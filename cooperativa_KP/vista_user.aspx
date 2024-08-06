<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="vista_user.aspx.cs" Inherits="cooperativa_KP.vista_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="container d-flex justify-content-center">
            <div class="row">
                <h1 class="h1">Cuenta de Clientes</h1>
                <div class="card bg-dark" style="width: 18rem;">
                    <div class="card-body">
                        <asp:Label ID="nombre" runat="server" Text="Detalles" CssClass="h3"></asp:Label>
                        <h6 class="card-subtitle mb-2 text-muted">Cuenta Corriente</h6>
                        <asp:Label ID="lbid" runat="server" Text="Código: " CssClass="card-text text-light"></asp:Label>
                        <br />
                        <asp:Label ID="lbnombre" runat="server" Text="Nombre: " CssClass="card-text text-light"></asp:Label>
                        <br />
                        <asp:Label ID="lbemail" runat="server" Text="Email: " CssClass="card-text text-light"></asp:Label>
                        <br />
                        <asp:Label ID="lbtelefono" runat="server" Text="Teléfono: " CssClass="card-text text-light"></asp:Label>
                        <br />
                        <asp:Label ID="lbdir" runat="server" Text="Dirección: " CssClass="card-text text-light"></asp:Label>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
