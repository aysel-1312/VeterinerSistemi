<%@ Page Title="" Language="C#" MasterPageFile="~/vetmaster.Master" AutoEventWireup="true" CodeBehind="veterinerpetprofil.aspx.cs" Inherits="VeterinerSistemi.veterinerpetprofil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            width: 133px;
        }
        .auto-style4 {
            width: 364px;
        }
        .auto-style6 {
            width: 326px;
        }
        .auto-style7 {
            width: 77%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> PETİN BİLGİLERİ</h1>
    <p> &nbsp;</p>
    <table class="auto-style7">
        <tr>
            <td class="auto-style6">
                <asp:Image ID="Image2" runat="server" Height="126px" Width="133px" />
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
    <p> &nbsp;</p>
    <p> 
        &nbsp;</p>
    <p> 
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("hizmet") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("petAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("tarih") %>'></asp:Label>
                        </td>

                        <td>
                            <asp:Image ID="Image1" runat="server" Height="41px" ImageUrl='<%# Eval("petRsm") %>' Width="58px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p> &nbsp;</p>
</asp:Content>
