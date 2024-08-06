<%@ Page Title="Regístrate" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Regístrate.aspx.cs" Inherits="cooperativa_KP.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row justify-content-center bg-appointment mx-0" style="background-image: url(''); background-size: cover; background-position: center;">
        <div class="col-lg-6 py-5">
            <div class="p-5 my-5" style="background: rgba(33, 30, 28, 0.7);">
                <h1 class="text-white text-center mb-4">Registrarse</h1>
                <form>
                    <div class="form-row">
                        <div class="col-sm">
                            <div class="form-group">
                                <asp:TextBox ID="txnombre" runat="server" CssClass="form-control bg-transparent p-4"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm">
                            <div class="form-group">
                                <asp:TextBox ID="txemail" runat="server" CssClass="form-control bg-transparent p-4"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-sm">
                            <div class="form-group">
                                <div class="date" id="date" data-target-input="nearest">
                                    <asp:TextBox ID="txtelefono" runat="server" CssClass="form-control bg-transparent p-4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm">
                            <div class="form-group">
                                <div class="time" id="time" >
                                    <asp:TextBox ID="txdir" runat="server" CssClass="form-control bg-transparent p-4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm">
                            <div class="form-group">
                                <div class="time">
                                    <asp:TextBox ID="txuser" runat="server" CssClass="form-control bg-transparent p-4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm">
                            <div class="form-group">
                                <div class="time" >
                                    <asp:TextBox ID="txpassword" runat="server" CssClass="form-control bg-transparent p-4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-sm-1">
                            <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="btn btn-primary btn-block" OnClick="Button1_Click" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
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

</asp:Content>
