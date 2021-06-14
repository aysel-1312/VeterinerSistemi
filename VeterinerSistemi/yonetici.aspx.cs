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
    public partial class yonetici : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text == "" || TextBox5.Text == "")
            {
                Label6.Text = "Kullanıcı adı veya şifrenizi giriniz";
            }
            else
            {

                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                SqlCommand sorgu = new SqlCommand("SELECT * FROM yontab WHERE yonkulad=@yon AND yonsif=@yonsif", baglanti);

                sorgu.Parameters.Add("@yon", SqlDbType.NChar).Value = TextBox4.Text;
                sorgu.Parameters.Add("@yonsif", SqlDbType.NChar).Value = TextBox5.Text;


                baglanti.Open();

                SqlDataReader oku = sorgu.ExecuteReader();
                // Eğer bir kayıt varsa
                if (oku.Read())
                {
                    // Okunan verileri Session(Oturum) değişkenlerinde saklayalım
                    Session["yonID"] = oku["yonID"].ToString();
                    Session["kuladkulsifre"] = oku["yonkulAd"].ToString() + " " + oku["yonsif"].ToString();
                    Label6.Text = "Tamam bulundu";
                    // Giriş sayfasına yönlendir
                    Response.Redirect("yoneticianasayfa.aspx");
                }
                else // Kayıt yoksa
                {
                    Label6.Text = "Böyle bir kullanıcı bulunamadı !!!";

                }
                oku.Close(); // Reader nesnesini kapat
                baglanti.Close(); // Bağlantı nesnesini kapat
            }


        }
    }
}