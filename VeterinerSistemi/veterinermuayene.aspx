<%@ Page Title="" Language="C#" MasterPageFile="~/vetmaster.Master" AutoEventWireup="true" CodeBehind="veterinermuayene.aspx.cs" Inherits="VeterinerSistemi.veterinermuayene" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> MUAYENE BİLGİLERİ 
    </h1>
    <p> <strong>
        <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı:"></asp:Label>
        </strong>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </p>
    <p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Pet:"></asp:Label>
        </strong>
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
    </p>
    <p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Hizmet:"></asp:Label>
        </strong>
        <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
    </p>
    <p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Ücret:"></asp:Label>
        <asp:RadioButton ID="RadioButton1"  runat="server" GroupName="odenme" Text="Ödendi"  />
        </strong>&nbsp; <strong>
        <asp:RadioButton ID="RadioButton2" runat="server"  GroupName="odenme" Checked="true" Text="Ödenmedi" />
        </strong> 
    </p>
    <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="Kaydet" Width="117px" Height="34px" />
        </strong> 
    </p>
</asp:Content>
