<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/paginas/Principal.Master" CodeBehind="mantenimiento.aspx.vb" Inherits="Facturacion.mantenimiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 217px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Menu ID="mnuOpciones" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem Text="Clientes" Value="Clientes" NavigateUrl="~/paginas/clientes.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Productos" Value="Productos"></asp:MenuItem>
                    <asp:MenuItem Text="Categorias" Value="Categorias" NavigateUrl="~/paginas/categorias.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Facturacion" Value="Facturacion"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
