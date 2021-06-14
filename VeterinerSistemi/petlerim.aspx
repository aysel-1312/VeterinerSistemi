<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="petlerim.aspx.cs" Inherits="VeterinerSistemi.petlerim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            width: 621px;
        }
        .auto-style6 {
            width: 47px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
    .auto-style8 {
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> PETLERİM </h1>
    <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:Button ID="Button1" runat="server" Text="Pet Ekle " CssClass="auto-style8" OnClick="Button1_Click" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:Button ID="Button2" runat="server" Text="Pet Listesi" CssClass="auto-style8" OnClick="Button2_Click" />
        </strong>
    </p>
    <p> 
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">
                             <a href="kulpetprofil.aspx?petID=<%#Eval("petID") %>"><asp:Label ID="Label1" runat="server" Text='<%# Eval("petAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                      <a href="petguncelle.aspx?petID=<%#Eval("petID") %>">  <asp:Image ID="Image1" runat="server" Height="32px" ImageUrl="~/RESİMLER/update.jpg" Width="44px" />
                        </td>
                        <td>
                        <a href ="petlerim.aspx?petID=<%# Eval("petID") %>&islem=sil"> <asp:Image ID="Image2" runat="server" CssClass="auto-style7" Height="20px" ImageUrl="~/RESİMLER/delete.png" Width="32px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
