<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="kullanıcıprofil.aspx.cs" Inherits="VeterinerSistemi.kullanıcıprofil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 288px;
        }
        .auto-style4 {
            width: 149px;
            top:0;
        height: 266px;
    }
    .auto-style5 {
        height: 266px;
    }
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        width: 122px;
    }
        .auto-style8 {
            width: 345px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> KULLANICI PROFİL </h1>
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">
                <asp:Image ID="Image1" runat="server" Height="103px" Width="101px" />
            </td>
            <td class="auto-style5">
        <strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Ad:"></asp:Label>
        &nbsp;</strong><br />
                <br />
    <p>
        <strong>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Soyad:"></asp:Label>
        &nbsp;</strong></p>
    
        <strong>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label7" runat="server" Text="E-mail:"></asp:Label>
                </strong>
                <p>
                    <strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        &nbsp;</strong></p>
    <p>
        <strong>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Doğum Yeri:"></asp:Label>
        &nbsp;</strong></p>
    
        <strong>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Doğum Tarihi:"></asp:Label>
    &nbsp;<br />
    </strong>
     
    
    
    <p>
        <strong>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Cinsiyet:"></asp:Label>
        &nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
            </td>
        </tr>
    </table>
    <p> 
        <asp:DataList ID="DataList1" runat="server" Width="603px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("petAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("hizsec") %>'></asp:Label>
                        </td>
                        <td>

                            <asp:Image ID="Image2" runat="server" Height="42px" ImageUrl='<%# Eval("petRsm") %>' Width="58px" />

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p> &nbsp;</p>
</asp:Content>
