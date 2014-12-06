<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ventas.aspx.cs" Inherits="Ventas" Title="Página sin título" %>

<%@ Register assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="color: #000080" class="auto-style1">
    VENTAS
        <asp:Button ID="Button5" runat="server" Text="Button" />
    </p>
    <p style="color: #000080">
        Buscar Venta&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button4" runat="server" Text="Buscar" />
    </p>
    <p style="color: #000080">
        CodSocio&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verificar" />
&nbsp;&nbsp;&nbsp; ----------&nbsp;&nbsp; Nombre&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
    </p>
    <p style="color: #000080">
        Empleado&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="Nombre" DataValueField="idEmpleado">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FECHA(AAAA-MM-DD)&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="22px"></asp:TextBox>
    </p>
    <p style="color: #000080">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Guardar" />
    </p>
    <p style="color: #000080" class="auto-style1">
        DETALLE</p>
    <p style="color: #000080">
        Pelicula&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="EntityDataSource2" DataTextField="Nombre" DataValueField="idPelicula">
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
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=VideoclubEntities" DefaultContainerName="VideoclubEntities" EntitySetName="Empleados">
    </asp:EntityDataSource>
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=VideoclubEntities" DefaultContainerName="VideoclubEntities" EntitySetName="Peliculas">
    </asp:EntityDataSource>
</asp:Content>

