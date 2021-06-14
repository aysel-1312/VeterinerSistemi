<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="vetlistesi.aspx.cs" Inherits="VeterinerSistemi.vetlistesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 484px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> VETERİNER LİSTESİ 

    </h1>
    <p> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <strong>
        <asp:Button ID="Button1" runat="server" Text="Veteriner Ara" CssClass="auto-style3" OnClick="Button1_Click"/>

        </strong>

    </p>
    <p> 
        &nbsp;</p>
    <p> 
        <asp:DataList ID="DataList1" runat="server" Width="606px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style5">&nbsp;
                         <a href ="yoneticiveterinergoruntule.aspx?vetID=<%# Eval("vetID") %>"><asp:Label ID="Label8" runat="server" ForeColor="#006666" Text='<%# Eval("vetAd") %>'></asp:Label></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href ="yoneticiveterinergoruntule.aspx?vetID=<%# Eval("vetID") %>"><asp:Label ID="Label1" runat="server" ForeColor="#006666" Text='<%# Eval("vetSyd") %>'></asp:Label></a>
                       </td>
                        <td><a href="vetdetayguncelle.aspx?vetID=<%#Eval("vetID") %>"><asp:Image ID="Image1" runat="server" Height="27px" ImageUrl="~/RESİMLER/update.jpg" Width="30px" /></a>
                            </td>
                            <td>
                                <a href ="vetlistesi.aspx?vetID=<%# Eval("vetID") %>&islem=sil">   <asp:Image ID="Image2" runat="server" Height="23px" ImageUrl="~/RESİMLER/delete.png" Width="36px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p> &nbsp;</p>
</asp:Content>
