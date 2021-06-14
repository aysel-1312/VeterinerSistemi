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
    public partial class yoneticiduyuruguncelle : System.Web.UI.Page
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                id = Request.QueryString["duyuruID"];
                Session["duyuruID"] = id;

                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                if (Page.IsPostBack == false)
                {
                    baglanti.Open();
                    string sorgu = "Select * from duyurutab where duyuruID=@duyuruID";
                    SqlCommand komut = new SqlCommand(sorgu, baglanti);
                    komut.Parameters.AddWithValue("@duyuruID", id);
                    SqlDataReader dr = komut.ExecuteReader();
                    while (dr.Read())
                    {
                        TextBox1.Text = dr[1].ToString();
                        
                    }
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("yoneticiduyurulistesi.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                id = Request.QueryString["duyuruID"];
                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                baglanti.Open();
                SqlCommand komut = new SqlCommand("UPDATE duyurutab set duyuru=@duyuru,tarih=@tarih  where duyuruID = @id", baglanti);

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("yoneticiduyuruekle.aspx");
        }
    }
    }
