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
    <asp:ListBox ID="ListBox1" runat="server" Height="87px" Width="183px">
    </asp:ListBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Consultar Todas" 
        Width="125px" />
</p>
<p style="color: #000080;">
    &nbsp;</p>
<p style="color: #000080; text-decoration: underline;">
    &nbsp;</p>
</asp:Content>

