<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login_admin.aspx.cs" Inherits="cooperativa_KP.login_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container-fluid d-flex justify-content-center">
        <div class="container w-50">
            <h1 class="h1">Inicio de sesión de administrador</h1>
            <div class="row">
                <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
                <br />
                <asp:TextBox ID="txusuario" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                <br />
                <asp:TextBox ID="txpassword" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <div style="height:1cm;"> </div>
                <asp:Button ID="Button1" runat="server" Text="Ingresar" CssClass="btn btn-dark" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
</asp:Content>
