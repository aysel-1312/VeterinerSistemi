<%@ Page Title="" Language="C#" MasterPageFile="~/basla.Master" AutoEventWireup="true" CodeBehind="biyokimyasal.aspx.cs" Inherits="VeterinerSistemi.biyokimyasal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 147px;
        }
        .auto-style4 {
            width: 600px;
        }
        .auto-style5 {
            width: 577px;
        }
        .auto-style6 {
            width: 588px;
        }
        .auto-style7 {
            width: 586px;
        }
        .auto-style8 {
            width: 184px;
            height: 110px;
        }
        .auto-style9 {
            width: 580px;
        }
        .auto-style10 {
            width: 201px;
            font-size: 92%;
            line-height: 140%;
            height: 107px;
            padding: 0px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> BİYOKİMYASAL </h1>
    <p class="auto-style10">
        <td>
        <img src="http://www.atasehirveteriner.com/upload/images/hizmetler/labaratuvar/vettest-main.png" style="border-style: none; border-color: inherit; border-width: medium; margin: 0px 5px 0px 0px; padding: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; " class="auto-style8" /></p></td>
    <td> Ünitemizde biyokimyasal testler için IDEXX Vet Test 8008 cihazı kullanılmaktadır. Kan serumu ya da plazma ile çalışan bu cihaz ile kısa sürede güvenilir sonuçlar elde edilmektedir. Karaciğer, böbrek, kalp gibi organlara spesifik parametrelerin yanı sıra gastro-intestinal sistem, endokrin( hormonal ) sistem, kas ve iskelet sistemi ve lipit metabolizmasına özgü parametrelere bakılarak organ ve sistemlerin işleyişi ve durumu hakkında bilgi edinilmektedir. Bu sonuçlara göre gerekli görülen tedavi kliniğimizde yapılmaktadır.<br />
   <td> </td> 
    <div style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(77, 77, 77); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; " class="auto-style6">
        <p style="margin: 15px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background: rgb(247, 247, 249); color: rgb(119, 119, 119); font-family: &quot;Trebuchet MS&quot;, Verdana, Arial, sans-serif; line-height: 20px;" class="auto-style5">
            <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background: transparent;"><strong>26 Parametre</strong></span></p>
    </div>
    <table border="1" cellpadding="5" cellspacing="5" style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; border-collapse: collapse; border-spacing: 0px; color: rgb(119, 119, 119); font-family: &quot;Trebuchet MS&quot;, Verdana, Arial, sans-serif; font-size: 13px; line-height: 20px; background-color: rgb(247, 247, 249); border: 1px solid rgb(240, 240, 239); " class="auto-style4">
        <tr>
            <td style="padding: 1px;">ALB</td>
            <td style="padding: 1px;">CHOL</td>
            <td style="padding: 1px;">LDH</td>
            <td style="padding: 1px;">TRIG</td>
            <td style="padding: 1px;">ALKP</td>
            <td style="padding: 1px;">CK</td>
            <td style="padding: 1px;">LIPA</td>
            <td style="padding: 1px;">UCREA†</td>
            <td style="padding: 1px;">ALT</td>
            <td style="padding: 1px;">CREA</td>
            <td style="padding: 1px;">Mg</td>
            <td style="padding: 1px;">UPC*†</td>
            <td style="padding: 1px;">AMYL</td>
        </tr>
        <tr>
            <td style="padding: 1px;">GGT</td>
            <td style="padding: 1px;">NH3</td>
            <td style="padding: 1px;">UPRO†</td>
            <td style="padding: 1px;">AST</td>
            <td style="padding: 1px;">GLOB*</td>
            <td style="padding: 1px;">PHOS</td>
            <td style="padding: 1px;">URIC</td>
            <td style="padding: 1px;">BUN</td>
            <td style="padding: 1px;">GLU</td>
            <td style="padding: 1px;">TBIL</td>
            <td style="padding: 1px;">Ca</td>
            <td style="padding: 1px;">LAC</td>
            <td style="padding: 1px;">TP</td>
            <td style="padding: 1px;">&nbsp;</td>
            <td style="padding: 1px;">&nbsp;</td>
        </tr>
    </table>
    <p style="border-style: none; border-color: inherit; border-width: 0px; margin: 15px 0px; padding: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background: rgb(247, 247, 249); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; color: rgb(119, 119, 119); font-family: &quot;Trebuchet MS&quot;, Verdana, Arial, sans-serif; line-height: 20px;" class="auto-style7">
        · *Hesaplanmış<br />
        †Urine P:C Ratio için mevcut</p>
    <p class="auto-style9" style="border-style: none; border-color: inherit; border-width: 0px; margin: 15px 0px; padding: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background: rgb(247, 247, 249); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; color: rgb(119, 119, 119); font-family: &quot;Trebuchet MS&quot;, Verdana, Arial, sans-serif; line-height: 20px;">
        <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background: transparent;">Hazır Paneller:</strong></p>
    <p style="margin: 15px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(77, 77, 77); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;">Diagnostik Sağlık Profili</strong><br />
        Pankreas sağlığını izlemek ve karaciğer hastalıklarının bazı türlerini ayırt etmek istediğiniz hastalarınızın minimum veri tabanını oluşturmak için bu profili kullanın.ALB, ALKP, ALT, AMYL, BUN, Ca, CREA, GGT, GLU, LIPA, TBIL, TP, GLOB</p>
    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(77, 77, 77); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;">Genel Sağlık Profili</strong><br />
        Yaşlı ve hasta hayvanlara yaptığınız sağlık taramaları ayrıca &nbsp;hasta hayvanların değerlendirilmesi için &nbsp;bu profili kullanınız.ALB, ALKP, ALT, AMYL, BUN, Ca, CHOL, CREA, GLOB, GLU, PHOS, TBIL, TP</p>
    <p style="margin: 15px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(77, 77, 77); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;">Preanestezik Panel</strong><br />
        Bu kullanışlı 6 parametrelik panel ile hastanıza uygulayacağınız anestezi güvenilirliğini test ediniz. &nbsp;ALKP, ALT, BUN, CREA, GLU, TP</p>
    <p style="margin: 15px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(77, 77, 77); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;">NSAID Takip Paneli</strong><br />
        Five targeted tests recommended for monitoring patients receiving NSAID therapy.ALKP, ALT, AST, BUN, CREA</p>
    <p style="margin: 15px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(77, 77, 77); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;">At Sağlık Profili</strong><br />
        Bu paket içerisinde at için ihtiyaç duyacağınız bütün testler mevcuttur.<br />
        <br />
        <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;">Kanatlı Sağlık Profili</strong><br />
        Kuş türleri için geniş yelpazede hazırlanmış bu profilde tüm profili veya yalnızca ihtiyacınız olan tek slaytları kullanabilirsiniz. ALB, AST, Ca, GLOB, GLU, TP, URIC<br />
        <br />
        <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;">Urine P:C Ratio</strong><br />
        Hastanız azotemik hale gelmeden proteinüriyi saptayıp rakamsal olarak değerlendirip böbrek hastalıklarının erken tanısını koyunuz. (Urine P:C Ratio Hazırlama Kiti ile kullanılmalıdır.) UCRE, UPRO<br />
        <br />
        <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;">Kalite Kontrol Paneli</strong>
        Kapsamlı bir kalite kontrol prosedürü için 4 aylık ihtiyacınızı karşılar.</p>   
</asp:Content>
