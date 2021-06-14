<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="hizguncelle.aspx.cs" Inherits="VeterinerSistemi.hizguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            width: 584px;
        }
        .auto-style5 {
            width: 182px;
        }
        .auto-style6 {
            width: 1163px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> HİZMET LİSTESİ </h1>
    <p>
        <br />
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="Hizmet Ara" OnClick="Button1_Click" />
        </strong>

    </p>
    <p> 
        &nbsp;</p>
    <p> 
        <asp:DataList ID="DataList1" runat="server" Width="606px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">&nbsp;
                         <a href ="hizguncelle.aspx?hizID=<%# Eval("hizID") %>"><asp:Label ID="Label8" runat="server" ForeColor="#006666" Text='<%# Eval("hizsec") %>'></asp:Label></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href ="hizguncelle.aspx?hizID=<%# Eval("hizID") %>"><asp:Label ID="Label1" runat="server" ForeColor="#006666" Text='<%# Eval("ucret") %>'></asp:Label></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       </td>
                        <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="hizdetayguncelle.aspx?hizID=<%#Eval("hizID") %>"><asp:Image ID="Image1" runat="server" Height="27px" ImageUrl="~/RESİMLER/update.jpg" Width="30px" /></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                               <a href ="hizguncelle.aspx?hizID=<%# Eval("hizID") %>&islem=sil">   <asp:Image ID="Image2" runat="server" Height="23px" ImageUrl="~/RESİMLER/delete.png" Width="36px" />


                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p> &nbsp;</p>
    
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
