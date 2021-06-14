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
    public partial class kulbilgignclle : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            int kulID = Convert.ToInt32(Session["kulID"]);

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            
      
            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                string sql = "Select * from kullanicitab where kulID=@pID";
                SqlCommand komut = new SqlCommand(sql, baglanti);
                komut.Parameters.AddWithValue("@pID",kulID);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[3].ToString();
                    TextBox2.Text = dr[4].ToString();
                    TextBox3.Text = dr[1].ToString();
                    TextBox4.Text = dr[2].ToString();
                    TextBox8.Text = dr[6].ToString();
                    TextBox9.Text = dr[8].ToString();
                    
                }
                baglanti.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int kulID = Convert.ToInt32(Session["kulID"]);
            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            SqlCommand komut = new SqlCommand("Update kullanicitab Set kulAd=@ad,kulSyd=@soyad,email=@email,kulSif=@sifre,kuldgmYer=@yer,kdgmTrh=@tarih,kulcin=@cin,kulRsm=@rsm Where kulID=@ID", baglanti);
            komut.Parameters.AddWithValue("@ID", kulID);
            komut.Parameters.AddWithValue("@ad", TextBox1.Text);
            komut.Parameters.AddWithValue("@soyad", TextBox2.Text);
            komut.Parameters.AddWithValue("@email", TextBox3.Text);
            komut.Parameters.AddWithValue("@sifre", TextBox4.Text);
            komut.Parameters.AddWithValue("@yer", TextBox8.Text);
            komut.Parameters.AddWithValue("@tarih", TextBox9.Text);
            if (RadioButton1.Checked == true)
                komut.Parameters.AddWithValue("@cin", RadioButton1.Text);
            else if (RadioButton2.Checked == true)
                komut.Parameters.AddWithValue("@cin", RadioButton2.Text);
            komut.Parameters.AddWithValue("@rsm", FileUpload1.FileName);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int kulID = Convert.ToInt32(Session["kulID"]);
            string sorgu3 = "Delete from kullanicitab where kulID=@pID";
            SqlConnection baglanti2 = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            baglanti2.Open();
            SqlCommand komut3 = new SqlCommand(sorgu3, baglanti2);
            komut3.Parameters.AddWithValue("@pID", kulID);
            komut3.ExecuteNonQuery();
            baglanti2.Close();
            Response.Redirect("anasayfam.aspx");
        }
    }
}