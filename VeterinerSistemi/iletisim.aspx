<%@ Page Title="" Language="C#" MasterPageFile="~/basla.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="VeterinerSistemi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        <h1>İLETİŞİM </h1>
        <p>&nbsp;</p>
        <p> 
        <label><strong> &nbsp;&nbsp;&nbsp; </strong></label>
&nbsp;<strong><asp:Label ID="Label2" ForeColor="Black" runat="server" Text="Adres:Erenler Caddesi Güneş Sokak Kat: 5 No:8 Melikgazi/KAYSERİ"></asp:Label>
        &nbsp;</strong><br/><br/>&nbsp;&nbsp; <strong>
            <asp:Label ID="Label3" runat="server" Text="Telefon:(0 352 856 96 54)"></asp:Label>
            </strong><br/>
        <br/><br/>
        <div id="map_canvas" style="width:500px;height:350px;"></div>
        <label> &nbsp;</label>
        </asp:Content>