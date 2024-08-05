<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio_de_Sesion.aspx.cs" Inherits="cooperativa_KP.Inicio_de_Sesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-6 d-flex align-items-center justify-content-center">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="https://icons.veryicon.com/png/o/miscellaneous/yuanql/icon-admin.png" alt="Card image cap" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Administrador</h5>
                        <p class="card-text">Ingresar como administrador</p>
                        <a href="login_admin.aspx" class="btn btn-primary" style="width: 16rem;" >Ingresar</a>
                    </div>
                </div>
            </div>
            <div class="col-6 d-flex align-items-center justify-content-center">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="https://static-00.iconduck.com/assets.00/user-icon-2046x2048-9pwm22pp.png" alt="Card image cap" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Cliente</h5>
                        <p class="card-text">Ingresar como cliente</p>
                        <a href="login_user.aspx" class="btn btn-primary" style="width: 16rem;">Ingresar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
