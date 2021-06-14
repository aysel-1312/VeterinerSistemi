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
    public partial class veterinerduyuruguncelle : System.Web.UI.Page
    {
        string id ="";
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                id = Request.QueryString["vetduyuruID"];
                Session["vetduyuruID"] = id;

                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                if (Page.IsPostBack == false)
                {
                    baglanti.Open();
                    string sorgu = "Select * from vetduyurutab where vetduyuruID=@vetduyuruID";
                    SqlCommand komut = new SqlCommand(sorgu, baglanti);
                    komut.Parameters.AddWithValue("@vetduyuruID", id);
                    SqlDataReader dr = komut.ExecuteReader();
                    while (dr.Read())
                    {
                        TextBox1.Text = dr[1].ToString();

                    }
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                id = Request.QueryString["vetduyuruID"];
                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                baglanti.Open();
                SqlCommand komut = new SqlCommand("UPDATE vetduyurutab set duyuru=@duyuru ,tarih=@tarih where vetduyuruID = @id", baglanti);

                komut.Parameters.AddWithValue("@id", id);
                komut.Parameters.AddWithValue("@duyuru", TextBox1.Text);
                komut.Parameters.AddWithValue("@tarih", DateTime.Now);

                komut.ExecuteNonQuery();
                baglanti.Close();
                Label2.Text = "guncellendi";
            }
            catch (Exception a)
            {
                Label2.Text = a.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("veterinerduyuruliste.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("veterinerduyuruyaz.aspx");
        }
    }
}