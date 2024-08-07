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
                    <asp:Button ID="Button4" runat="server" Text="Gestionar Cuentas" CssClass="list-group-item" OnClick="Button4_Click" />
                </ul>
                <br />
                <div class="card">
                    <h3 class="h3 card-title">Formulario de nueva cuenta</h3>
                    <div class="card-body">
                        <asp:Label ID="Label1" runat="server" Text="Cliente"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Tipo"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList2" runat="server"  CssClass="btn btn-secondary dropdown-toggle">
                            <asp:ListItem>Ahorro</asp:ListItem>
                            <asp:ListItem>Corriente</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Saldo"></asp:Label>
                        <br />
                        <asp:TextBox ID="txsaldo" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button5" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="Button5_Click" />
                        
                    </div>
                </div>
            </div>
            <div class="col-8">
                <h3 class="h3">
                    Detalles
                </h3>
                <asp:GridView ID="tabla" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="tabla_RowCommand">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    <Columns>
            <asp:TemplateField HeaderText="Acciones">
                <ItemTemplate>
                    <asp:Button ID="btnEditar" runat="server" Text="Editar" CommandName="Editar" CommandArgument='<%# Eval("ID") %>' />
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CommandName="Eliminar" CommandArgument='<%# Eval("ID") %>' />
                </ItemTemplate>
            </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
