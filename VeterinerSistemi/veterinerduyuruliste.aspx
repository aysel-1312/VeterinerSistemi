<%@ Page Title="" Language="C#" MasterPageFile="~/vetmaster.Master" AutoEventWireup="true" CodeBehind="veterinerduyuruliste.aspx.cs" Inherits="VeterinerSistemi.veterinerduyuruliste" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        width: 118px;
    }
    .auto-style5 {
        width: 375px;
    }
    .auto-style6 {
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1> DUYURU LİSTESİ </h1>
    <p>
        <br />
    </p>
    <p>
        <strong>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="Duyuru Listesi" />
    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" OnClick="Button2_Click" Text="Duyuru Yaz" />
    </strong> 
    </p>
    <p>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("tarih") %>'></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("duyuru") %>'></asp:Label>
                    </td>
                    <td>
                    <a href ="veterinerduyuruliste.aspx?vetduyuruID=<%# Eval("vetduyuruID") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="29px" ImageUrl="~/RESİMLER/delete.png" Width="32px" />
                    </td>
                    <td>
                      <td><a href="veterinerduyuruguncelle.aspx?vetduyuruID=<%#Eval("vetduyuruID") %>"> <asp:Image ID="Image1" runat="server" Height="38px" ImageUrl="~/RESİMLER/update.jpg" Width="41px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </p>
</asp:Content>
