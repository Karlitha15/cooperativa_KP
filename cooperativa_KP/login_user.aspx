<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login_user.aspx.cs" Inherits="cooperativa_KP.login_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid d-flex justify-content-center">
        <div class="container w-50 " style="border: 1px solid black">
            <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
            <asp:TextBox ID="txusuario" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txpassword" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Ingresar" CssClass="btn btn-dark" />
        </div>
    </div>
</asp:Content>
