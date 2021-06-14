<%@ Page Title="" Language="C#" MasterPageFile="~/vetmaster.Master" AutoEventWireup="true" CodeBehind="veterinerduyurulistesi.aspx.cs" Inherits="VeterinerSistemi.veterinerduyurulistesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
 <h1> DUYURU LİSTESİ </h1>
    <p> &nbsp;</p>
    <p> 
        <asp:DataList ID="DataList1" runat="server" Width="597px"  Height="140px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("yonkulad") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("duyuru") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("tarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
