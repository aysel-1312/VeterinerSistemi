<%@ Page Title="" Language="C#" MasterPageFile="~/basla.Master" AutoEventWireup="true" CodeBehind="sifreunuttum.aspx.cs" Inherits="VeterinerSistemi.sifreunuttum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>ŞİFREMİ UNUTTUM </h1>
    <p>
        &nbsp;</p>
    <div>
        <strong>
        <asp:Label ID="lblemail" runat="server" for="txtemail">E-Mail Adresiniz:</asp:Label>
        </strong>
        <br />
        <asp:TextBox ID="txtemail" runat="server" Width="250px"></asp:TextBox>
        <br />
        <br /><strong>
        <asp:Button ID="btnGiris" runat="server" CssClass="auto-style3" OnClick="btnGiris_Click" Text="Gönder" Width="106px" />
        </strong>
        <br />
        <br /><strong>
        <asp:Label ID="lblMesaj" runat="server"></asp:Label>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </strong>
    </div>
    <p>
        &nbsp;</p>
</asp:Content>
