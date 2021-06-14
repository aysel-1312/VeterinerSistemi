using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;



namespace VeterinerSistemi
{
    public partial class veterinermesajyaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                //COMBOBOX İÇERİSİ
                string sorgu2 = "select * from kullanicitab";
                SqlCommand komut2 = new SqlCommand(sorgu2, baglanti);
                baglanti.Open();
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "kulAd";
                DropDownList1.DataValueField = "kulID";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                baglanti.Close();
            }
        }
            
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("veterinermesajlar.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("veterinermesajyaz.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("veterinergöderilenmesajlar.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");

            baglanti.Open();
            string sql = "insert into msgtab (gonderenID,gidenID,msg,tarih) values (@pgonderen,@pgiden,@pmesaj,@ptarih)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pgonderen", Convert.ToInt32(Session["vetID"]));
            komut.Parameters.AddWithValue("@pgiden", DropDownList1.SelectedValue);

            komut.Parameters.AddWithValue("@pmesaj", TextBox1.Text);
            komut.Parameters.AddWithValue("@ptarih", DateTime.Now);

            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Write("gönderildi");
        }
    }
}