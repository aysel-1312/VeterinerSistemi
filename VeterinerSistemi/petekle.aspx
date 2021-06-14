<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="petekle.aspx.cs" Inherits="VeterinerSistemi.petekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> PET EKLE </h1>
<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Pet Ekle" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Pet Listesi" />
    </p>
<p> <strong>
    <asp:Label ID="Label1" runat="server" Text="Pet Ad:"></asp:Label>
    </strong>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
    <p> <strong>
    <asp:Label ID="Label5" runat="server" Text="Pet:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>KEDİ</asp:ListItem>
            <asp:ListItem>KÖPEK</asp:ListItem>
            <asp:ListItem>KUŞ</asp:ListItem>
        </asp:DropDownList>
    </strong>
</p>
<p> <strong>
    <asp:Label ID="Label2" runat="server" Text="Pet Resim:"></asp:Label>
    </strong>
    <asp:FileUpload ID="FileUpload1" runat="server" />
</p>
<p> <strong>
    <asp:Label ID="Label3" runat="server" Text="Pet Cinsiyet:"></asp:Label>
    </strong>
    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="cinsiyet" Text="Dişi" />
    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="cinsiyet" Checked="true" Text="Erkek"  />
</p>
<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Ekle" Width="92px" OnClick="Button1_Click" />
</p>
<p> 
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>
