<%@ Page Title="" Language="C#" MasterPageFile="~/vetmaster.Master" AutoEventWireup="true" CodeBehind="hasta.aspx.cs" Inherits="VeterinerSistemi.hasta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 426px;
        }
        .auto-style6 {
            width: 54px;
        }
        .auto-style7 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h1> HASTA SAYFASI </h1>
    <p>

        &nbsp;</p>
        <strong>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="kullaniciAra" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Pet Kullanıcısı Ara" Width="133px" OnClick="Button1_Click" CssClass="auto-style7" />
    </strong>
    <p>
        &nbsp;</p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DataList ID="DataList2" runat="server" Width="606px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style4">
                           
                      <a href ="veterinerhastagoruntule.aspx?kulID=<%# Eval("kulID") %>"><asp:Label ID="Label8" runat="server" ForeColor="#006666" Text='<%# Eval("kulAd") %>'></asp:Label></a>
                     <a href ="veterinerhastagoruntule.aspx?kulID=<%# Eval("kulID") %>"><asp:Label ID="Label1" runat="server" ForeColor="#006666" Text='<%# Eval("kulSyd") %>'></asp:Label></a>
                                                      </td>
                            <td class="auto-style6">
                          
                              <td>  </td>
                            <td>
                                    </td>
                        </caption>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    
    <p>
        &nbsp;</p>
    <p>

        &nbsp;</p>
    <p>

        &nbsp;</p>
    <p>

        &nbsp;</p>
    <p>

        &nbsp;</p>
</asp:Content>
