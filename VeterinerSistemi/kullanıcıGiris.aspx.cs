using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace VeterinerSistemi
{
    public partial class kullanıcıGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GuvenlikKoduOlustur();
        }
        string GuvenlikKodu;
        public void GuvenlikKoduOlustur()
        {
            GuvenlikKodu = "";
            int harf, bykharf, hangisi;
            Random Rharf = new Random();
            Random Rsayi = new Random();
            Random Rbykharf = new Random();
            Random Rhangisi = new Random();

            for (int b = 0; b < 8; b++)
            {
                int a = 0;
                hangisi = Rhangisi.Next(1, 3);
                if (hangisi == 1)
                {
                    GuvenlikKodu += Rsayi.Next(0, 10).ToString();
                }
                if (hangisi == 2)
                {
                    harf = Rharf.Next(1, 27);
                    for (char i = 'a'; i <= 'z'; i++)
                    {
                        a++;
                        if (a == harf)
                        {
                            bykharf = Rbykharf.Next(1, 3);
                            if (bykharf == 1)
                            {
                                GuvenlikKodu += i;
                            }
                            if (bykharf == 2)
                            {
                                GuvenlikKodu += i.ToString().ToUpper();
                            }
                        }
                    }
                }

            }
            lblmesaj.Text = GuvenlikKodu;

        }

        protected void btnkul_Click1(object sender, EventArgs e)
        {


            if (textkulgiris.Text == "" || textkulsifre.Text == "")
            {
                Label4.Text = "Kullanıcı adı veya şifrenizi giriniz";

            }
            else if  (TextBox1.Text == GuvenlikKodu)
            {
                Label4.Text = "Tüm bilgileri doğru girdiniz.";
            }
            else if(GuvenlikKodu==TextBox1.Text)
            {
                Label4.Text = "Güvenlik kodunu yanlış girdiniz.";
            } 
        
            else 
            {

                    SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                    SqlCommand sorgu = new SqlCommand("SELECT * FROM kullanicitab WHERE email=@user AND kulSif=@pass", baglanti);

                    sorgu.Parameters.AddWithValue("@user", textkulgiris.Text);
                    sorgu.Parameters.AddWithValue("@pass", textkulsifre.Text);


                    baglanti.Open();

                    SqlDataReader oku = sorgu.ExecuteReader();
                    // Eğer bir kayıt varsa
                    if (oku.Read())
                    {
                        // Okunan verileri Session(Oturum) değişkenlerinde saklayalım
                        Session["kulID"] = oku["kulID"].ToString();
                        Session["AdiSoyadi"] = oku["kulAd"].ToString() + " " + oku["kulSyd"].ToString();
                        lblmesaj.Text = "Tamam bulundu";
                        // Giriş sayfasına yönlendir
                        Response.Redirect("kullanıcıprofil.aspx");
                    }
                    else // Kayıt yoksa
                    {
                        Label4.Text = "Böyle bir kullanıcı bulunamadı !!!";

                    }
                    Response.Redirect("kullanıcıGiris.aspx");
                    oku.Close(); // Reader nesnesini kapat
                    baglanti.Close(); // Bağlantı nesnesini kapat
                }

            }


        } 
}