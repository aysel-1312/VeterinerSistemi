<%@ Page Title="" Language="C#" MasterPageFile="~/vetmaster.Master" AutoEventWireup="true" CodeBehind="veterinermesajlar.aspx.cs" Inherits="VeterinerSistemi.veterinermesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            width: 100%;
            height: 64px;
        }
        .auto-style5 {
            width: 129px;
        }
        .auto-style6 {
            width: 265px;
        }
        .auto-style7 {
            width: 128px;
        }
        .auto-style8 {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> MESAJLARIM </h1>
    <p> &nbsp;</p>
    <p> &nbsp;<strong><asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="Gelen  Mesajlar" OnClick="Button1_Click1" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="Mesaj Yaz" OnClick="Button2_Click1" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Button ID="Button3" runat="server" CssClass="auto-style3" Text="Gönderilmiş Mesajlar " Width="193px" OnClick="Button3_Click1" />
        </strong> </p>
    <p> &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" Width="608px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("kulAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("msg") %>'></asp:Label>
                        </td>
                        <td class="auto-style8"> 
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("tarih") %>'></asp:Label>
                        </td>
                        <td>
                       <a href ="veterinermesajyaz.aspx?kulID=<%# Eval("kulAd") %>&islem=cevapla">    <asp:Image ID="Image1" runat="server" Height="23px" ImageUrl="~/RESİMLER/send.png" Width="36px" /></a>
 
                 </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
