<%@ Page Title="" Language="C#" MasterPageFile="~/vetmaster.Master" AutoEventWireup="true" CodeBehind="veterinergöderilenmesajlar.aspx.cs" Inherits="VeterinerSistemi.veterinergöderilenmesajlar" %>
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
            width: 301px;
        }
        .auto-style8 {
            width: 219px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> GÖNDERİLEN MESAJLARIM</h1>
    <p> <strong>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="Gelen Mesajlar" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" CssClass="auto-style3" Text="Mesaj Yaz" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" CssClass="auto-style3" Text="Gönderilmiş Mesajlar" Width="193px" OnClick="Button4_Click" />
        </strong> </p>
<p> &nbsp;</p>
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
                        <a href ="veterinermesajyaz.aspx?vetID=<%# Eval("kulAd") %>&islem=cevapla"> <asp:Image ID="Image1" runat="server" Height="31px" Width="36px" ImageUrl="~/RESİMLER/send.png" /> </a>
                 </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <p> &nbsp;</p>
</asp:Content>
