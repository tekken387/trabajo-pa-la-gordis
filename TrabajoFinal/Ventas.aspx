﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ventas.aspx.cs" Inherits="Ventas" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="color: #000080">
    VENTAS</p>
    <p style="color: #000080">
        Buscar Venta&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button4" runat="server" Text="Buscar" />
    </p>
    <p style="color: #000080">
        CodSocio&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Verificar" />
&nbsp;&nbsp;&nbsp; ----------&nbsp;&nbsp; Nombre&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
    </p>
    <p style="color: #000080">
        Empleado&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FECHA&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p style="color: #000080">
        <asp:Button ID="Button2" runat="server" Text="Guardar" />
    </p>
    <p style="color: #000080">
        DETALLE</p>
    <p style="color: #000080">
        Pelicula&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ----------&nbsp;&nbsp;&nbsp; Cantidad
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p style="color: #000080">
        <asp:ListBox ID="ListBox1" runat="server" Height="144px" Width="718px"></asp:ListBox>
    </p>
    <p style="color: #000080">
        <asp:Button ID="Button3" runat="server" Text="Guardar" />
&nbsp;</p>
</asp:Content>

