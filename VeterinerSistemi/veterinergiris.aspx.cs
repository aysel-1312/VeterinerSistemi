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
    public partial class veterinergiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label3.Text = "Kullanıcı adı veya şifrenizi giriniz";
            }
            else
            {

                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                SqlCommand sorgu = new SqlCommand("SELECT * FROM vettab WHERE vetkulAd=@vetkulad AND vetsif=@vetsifre", baglanti);

                sorgu.Parameters.Add("@vetkulad", SqlDbType.NChar).Value = TextBox1.Text;
                sorgu.Parameters.Add("@vetsifre", SqlDbType.NChar).Value = TextBox2.Text;


                baglanti.Open();

                SqlDataReader oku = sorgu.ExecuteReader();
                // Eğer bir kayıt varsa
                if (oku.Read())
                {
                    // Okunan verileri Session(Oturum) değişkenlerinde saklayalım
                    Session["vetID"] = oku["vetID"].ToString();
                    Session["vetAdvetSyd"] = oku["vetkulAd"].ToString() + " " + oku["vetSif"].ToString();
                    Label3.Text = "Tamam bulundu";
                    // Giriş sayfasına yönlendir
                    Response.Redirect("veteriner.aspx");
                }
                else // Kayıt yoksa
                {
                    Label3.Text = "Böyle bir kullanıcı bulunamadı !!!";

                }
                oku.Close(); // Reader nesnesini kapat
                baglanti.Close(); // Bağlantı nesnesini kapat
            }
        }
    }
}