<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="VeterinerSistemi.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ATAŞEHİR VETERİNER KLİNİĞİ</title>
<meta name="description" content="İstanbul anadolu yakası ataşehir veteriner kliniği kurumsal web sitesi." />
<meta name="keywords" content="istanbul veteriner, ataşehir veteriner, veteriner ataşehir, veteriner, veteriner kliniği, anadolu yakası veteriner kliniği, acil veteriner, 7/24 veteriner" />
<meta name="content-language" content="tr" />
<link href="css/veteriner.css" rel="stylesheet" type="text/css" />
<link href="css/slider.css" rel="stylesheet" type="text/css" />
<link href="css/ddsmoothmenu.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="./images/favicon.ico" />

<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/slides.min.jquery.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>
<script src="js/veteriner.js"></script>
</head>
<body>


<!-- logo tut bitti --> 
<div class="header sola">
    <img src="images/header.jpg" class="headerbutun" />
    <ul id="ustmenu">
        <li></li>
        <li><span>Ataşehir Veteriner Kliniği</span></li>
        <li style="margin-left:5px;">
                <form action="#" method="get">
        <input name="ara" id="ara" type="text" class="sola arametin" style="padding-left:30px;" />
        <input name="arabuton" type="submit" value="ARA" class="sola arabuton cursor"  />
        <div class="sil"></div>
        </form>
        </li>
        <li><a href="http://tr-tr.facebook.com/atasehirveteriner" title="Facebook" target="_blank"><div class="face"></div></a> <a href="https://twitter.com/atasehirvet" title="Twitter" target="_blank"><div class="twit"></div></a><div class="sil"></div></li>
    </ul>
    <div class="sil"></div>
    
    <div class="ortamenu">
        <div id="smoothmenu1" class="ddsmoothmenu">
            <ul>
            <li><a href="http://www.atasehirveteriner.com">Ana sayfa</a></li>
            <li><a href="sayfa.php?seo=hakkimizda">Hakkımızda</a></li>
            <!-- Hakkımızda bitti -->
            <li><a href="#">Hizmetler</a>
              <ul>
              <li><a href="hizmet.php?seo=muayene-teshis">Muayene - Teşhis</a><ul><li><a href="hizmet.php?seo=ic-hastaliklar">İç Hastalıklar</a></li><li><a href="hizmet.php?seo=ortopedi">Ortopedi</a></li><li><a href="hizmet.php?seo=dogum">Doğum</a></li><li><a href="hizmet.php?seo=deri">Deri</a></li><li><a href="hizmet.php?seo=goz">Göz</a></li><li><a href="hizmet.php?seo=kulak-burun-bogaz">Kulak Burun Boğaz</a></li></ul></li><li><a href="hizmet.php?seo=laboratuvar">Laboratuvar</a><ul><li><a href="hizmet.php?seo=hematolojik">Hematolojik</a></li><li><a href="hizmet.php?seo=biyokimyasal">Biyokimyasal</a></li><li><a href="hizmet.php?seo=kan-gazlari">Kan Gazları</a></li><li><a href="hizmet.php?seo=idrar-tahlili">İdrar Tahlili</a></li><li><a href="hizmet.php?seo=diski-tahlili">Dışkı Tahlili</a></li><li><a href="hizmet.php?seo=spesifik-hastalik-testleri">Spesifik Hastalık Testleri</a></li></ul></li><li><a href="hizmet.php?seo=dijital-rontgen--dr-dedektor-paneli">Dijital Röntgen -  DR dedektör paneli</a></li><li><a href="hizmet.php?seo=kardiyoloji-ekg">Kardiyoloji EKG</a></li><li><a href="hizmet.php?seo=ultrason-doopler">Ultrason Doopler</a></li><li><a href="hizmet.php?seo=operasyon">Operasyon</a><ul><li><a href="hizmet.php?seo=guvenli-anestezi">Güvenli Anestezi</a></li></ul></li><li><a href="hizmet.php?seo=yogun-bakim">Yoğun Bakım</a></li><li><a href="hizmet.php?seo=yatili-tedavi">Yatılı Tedavi</a></li><li><a href="hizmet.php?seo=fizik-tedavi">Fizik Tedavi</a></li><li><a href="hizmet.php?seo=dis-unitesi">Diş Ünitesi</a></li><li><a href="hizmet.php?seo=asi-asi-takibi">Aşı - Aşı Takibi</a></li><li><a href="hizmet.php?seo=kryoterapi">Kryoterapi</a></li><li><a href="hizmet.php?seo=mikrocip-uygulama">Mikroçip Uygulama</a></li><li><a href="hizmet.php?seo=endoskopi">Endoskopi </a></li>              
              </ul>
            </li>
            <!-- Hizmetler bitti -->
            
            <li><a href="sayfa.php?seo=ekibimiz">Ekibimiz</a></li>
            <li><a href="#">Petiniz</a>
            	<ul>
              <li><a href="pet.php?seo=papagan">Papağan</a></li><li><a href="pet.php?seo=kedi">Kedi</a></li><li><a href="pet.php?seo=kopek">Köpek</a></li><li><a href="#">Egzotik</a><ul><li><a href="pet.php?seo=tavsanlar">Tavşanlar</a></li><li><a href="pet.php?seo=kaplumbagalar">Kaplumbağalar</a></li><li><a href="pet.php?seo=hamsterlar">Hamsterlar</a></li></ul></li><li><a href="pet.php?seo=kus">Kuş</a></li><li><a href="pet.php?seo=balik">Balık</a></li>              </ul>
            </li>
            <li><a href="sayfa.php?seo=pet-shop">Pet Shop</a></li>
            
            <li style="margin-left:0; margin-left:0; padding-left:0; padding-right:0;"><a href="iletisim.php?seo=iletisim">İletişim</a></li>
            </ul>
            <br style="clear: left" />
        </div>
    </div>
    <div class="sil"></div>
    <!-- ortamenu class bitti -->

</div>
<!-- header bitti -->
<div class="sil"></div>
<div class="header_solid"></div>    
    <div class="sayfa_detay">
        <div class="solbolum">
            
<div id="solmenutut">
    <div id="smoothmenu2" class="ddsmoothmenu-v">
        <ul>
            <li ><a href="#" >Muayene - Teşhis</a><ul><li ><a href="hizmet.php?seo=muayene-teshis" >Muayene - Teşhis</a></li><li><a href="hizmet.php?seo=ic-hastaliklar">İç Hastalıklar</a></li><li><a href="hizmet.php?seo=ortopedi">Ortopedi</a></li><li><a href="hizmet.php?seo=dogum">Doğum</a></li><li><a href="hizmet.php?seo=deri">Deri</a></li><li><a href="hizmet.php?seo=goz">Göz</a></li><li><a href="hizmet.php?seo=kulak-burun-bogaz">Kulak Burun Boğaz</a></li></ul></li><li ><a href="#" >Laboratuvar</a><ul><li ><a href="hizmet.php?seo=laboratuvar" >Laboratuvar</a></li><li><a href="hizmet.php?seo=hematolojik">Hematolojik</a></li><li><a href="hizmet.php?seo=biyokimyasal">Biyokimyasal</a></li><li><a href="hizmet.php?seo=kan-gazlari">Kan Gazları</a></li><li><a href="hizmet.php?seo=idrar-tahlili">İdrar Tahlili</a></li><li><a href="hizmet.php?seo=diski-tahlili">Dışkı Tahlili</a></li><li><a href="hizmet.php?seo=spesifik-hastalik-testleri">Spesifik Hastalık Testleri</a></li></ul></li><li ><a href="hizmet.php?seo=dijital-rontgen--dr-dedektor-paneli" >Dijital Röntgen -  DR dedektör paneli</a></li><li ><a href="hizmet.php?seo=kardiyoloji-ekg" >Kardiyoloji EKG</a></li><li ><a href="hizmet.php?seo=ultrason-doopler" >Ultrason Doopler</a></li><li ><a href="#" >Operasyon</a><ul><li ><a href="hizmet.php?seo=operasyon" >Operasyon</a></li><li><a href="hizmet.php?seo=guvenli-anestezi">Güvenli Anestezi</a></li></ul></li><li ><a href="hizmet.php?seo=yogun-bakim" >Yoğun Bakım</a></li><li ><a href="hizmet.php?seo=yatili-tedavi" >Yatılı Tedavi</a></li><li ><a href="hizmet.php?seo=fizik-tedavi" >Fizik Tedavi</a></li><li ><a href="hizmet.php?seo=dis-unitesi"  style="border:none;">Diş Ünitesi</a></li>            
        </ul>
        <div class="sil"></div>
    </div>


</div>
<div class="acik724" style="position:relative;">
	<img src="images/icon/7-24.jpg" style="position:absolute; left:0px; top:28px; z-index:1; margin-left:25px; " />
	<div id="acik724_flash" style="position:relative; z-index:2;">
        <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="142" height="31" id="7-24" align="middle">
            <param name="movie" value="flash/7-24.swf" />
            <param name="quality" value="high" />
            <param name="play" value="true" />
            <param name="loop" value="false" />
            <param name="wmode" value="transparent" />
            <param name="scale" value="showall" />
            <param name="menu" value="true" />
            <param name="devicefont" value="false" />
            <param name="salign" value="" />
            <param name="allowScriptAccess" value="sameDomain" />
            <!--[if !IE]>-->
            <object type="application/x-shockwave-flash" data="flash/7-24.swf" width="142" height="31">
                <param name="movie" value="flash/7-24.swf" />
                <param name="quality" value="high" />
                <param name="play" value="true" />
                <param name="loop" value="false" />
                <param name="wmode" value="transparent" />
                <param name="scale" value="showall" />
                <param name="menu" value="true" />
                <param name="devicefont" value="false" />
                <param name="salign" value="" />
                <param name="allowScriptAccess" value="sameDomain" />
            </object>
            <!--<![endif]-->
        </object>
    </div>
    
</div>

<div class="sil"></div>        </div>
