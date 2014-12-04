<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Socios.aspx.cs" Inherits="Socios" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-decoration: underline; color: #000080">
    SOCIOS</p>
    <p style="color: #000080; text-decoration: underline;">
        &nbsp;</p>
<p style="color: #000080;">
    <asp:Button ID="Button2" runat="server" Text="Buscar" />
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p style="color: #000080;">
    <asp:ListBox ID="ListBox1" runat="server" Height="87px" Width="183px">
    </asp:ListBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Consultar Todos" 
        Width="125px" />
</p>
<asp:Button ID="Button3" runat="server" Text="Agregar" />
<asp:Button ID="Button4" runat="server" Text="Editar" />
<asp:Button ID="Button5" runat="server" Text="Eliminar" />
<br />
<br />
    <br />
<asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="DNI"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<br />
    <br />
    <asp:Button ID="Button6" runat="server" Text="Guardar" />
    <br />
<p style="text-decoration: underline; color: #000080">
    &nbsp;</p>
</asp:Content>

