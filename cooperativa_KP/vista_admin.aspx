<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="vista_admin.aspx.cs" Inherits="cooperativa_KP.vista_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="container-fluid">
        <div class="row">
            <div class="col-4">
                <h3 class="h3">
                    Opciones de administración
                </h3>
                <ul class="list-group">
                    <asp:Button ID="Button1" runat="server" Text="Mensajes" CssClass="list-group-item" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Gestionar Clientes" CssClass="list-group-item" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Gestionar Credenciales" CssClass="list-group-item" />
                </ul>
            </div>
            <div class="col-8">
                <h3 class="h3">
                    Detalles
                </h3>
                <asp:GridView ID="tabla" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
