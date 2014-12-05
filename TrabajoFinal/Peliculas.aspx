<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Peliculas.aspx.cs" Inherits="Peliculas" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="color: #000080; text-decoration: underline;">
    PELICULAS</p>
<p style="color: #000080;">
    <asp:Button ID="Button2" runat="server" Text="Buscar" />
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p style="color: #000080;">
    <asp:ListBox ID="ListBox1" runat="server" Height="114px" Width="313px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
    </asp:ListBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Consultar Todas" 
        Width="125px" OnClick="Button1_Click" />
</p>
<asp:Button ID="Button3" runat="server" Text="Agregar" OnClick="Button3_Click" />
<asp:Button ID="Button4" runat="server" Text="Editar" />
<asp:Button ID="Button5" runat="server" Text="Eliminar" />
<br />
<br />
    <br />
<asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server" Enabled="False" ></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Precio"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
<br />
    <asp:Label ID="Label3" runat="server" Text="Stock"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button6" runat="server" Text="Guardar" Enabled="False" OnClick="Button6_Click" />
    <br />
</asp:Content>

