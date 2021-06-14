<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="yoneticimesajaspx.aspx.cs" Inherits="VeterinerSistemi.yoneticimesajaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 29px;
        }
        .auto-style4 {
            width: 583px;
        }
        .auto-style7 {
            width: 216px;
        }
        .auto-style8 {
            width: 877px;
        }
        .auto-style9 {
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> MESAJLARIM </h1>
  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Button ID="Button2" runat="server" Text="Mesaj Yaz" style="font-weight: bold" Width="110px" OnClick="Button2_Click1"/>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Button ID="Button3" runat="server" CssClass="auto-style3" Text="Gönderilmiş Mesajlar " Width="193px" style="font-weight: bold" OnClick="Button3_Click1" />
        <br />
    <br />
        </strong> 
    <p>
       <asp:DataList ID="DataList1" runat="server" Width="608px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("vetAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("msg") %>'></asp:Label>
                        </td>
                        <td class="auto-style7"> 
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("tarih") %>'></asp:Label>
                        </td>
                        <td>
                              <a href ="yoneticimesajyaz.aspx?vetID=<%# Eval("vetAd") %>&islem=cevapla">   <asp:Image ID="Image1" runat="server" Height="23px" ImageUrl="~/RESİMLER/send.png" Width="36px"  />
 
                 </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
