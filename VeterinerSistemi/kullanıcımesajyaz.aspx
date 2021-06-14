<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="kullanıcımesajyaz.aspx.cs" Inherits="VeterinerSistemi.kullanıcımesajyaz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> MESAJ YAZ </h1>
<p> <strong>
    <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="Gelen Mesajlar" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" CssClass="auto-style3" Text="Mesaj Yaz" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" CssClass="auto-style3" Text="Gönderilmiş Mesajlar" Width="193px" OnClick="Button4_Click" />
    </strong> </p>
    <p> &nbsp;</p>
<p> <strong>
    <asp:Label ID="Label2" runat="server" Text="Gönderilen Kişi"></asp:Label>
    :<asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="375px">
    </asp:DropDownList>
    </strong>
</p>
<p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Mesaj:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Height="47px" TextMode="MultiLine" Width="379px"></asp:TextBox>
    </strong></p>
<p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="29px" Text="Gönder" Width="96px" OnClick="Button1_Click" />
    </strong> </p>
<p> &nbsp;</p>
</asp:Content>
