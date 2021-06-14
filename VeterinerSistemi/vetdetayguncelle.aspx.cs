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
    public partial class vetdetayguncelle : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");




        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["vetID"];

          //  int vetID = Convert.ToInt32(Session["vetID"]);

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");


            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                string sql = "Select * from vettab where vetID=@pID";
                SqlCommand komut = new SqlCommand(sql, baglanti);
                komut.Parameters.AddWithValue("@pID", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();             
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[6].ToString();
                    TextBox4.Text = dr[7].ToString();
                    TextBox8.Text = dr[4].ToString();
                    TextBox9.Text = dr[9].ToString();
                    TextBox10.Text =dr[5].ToString();

                }
                baglanti.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                baglanti.Open();
                SqlCommand komut = new SqlCommand("UPDATE vettab set vetAd = @ad, vetSyd = @syd,vetkulAd = @kad,vetSif = @sif,vdgmYer = @yer,vdgmTrh = @trh,vetUni = @uni,vetCin = @cin,vetRsm = @rsm  where vetID = @id", baglanti);

                komut.Parameters.AddWithValue("@id", id);
                komut.Parameters.AddWithValue("@ad", TextBox1.Text);
                komut.Parameters.AddWithValue("@syd", TextBox2.Text);
                komut.Parameters.AddWithValue("@kad", TextBox3.Text);
                komut.Parameters.AddWithValue("@sif", TextBox4.Text);
                komut.Parameters.AddWithValue("@yer", TextBox8.Text);
                komut.Parameters.AddWithValue("@trh", TextBox9.Text);
                komut.Parameters.AddWithValue("@uni", TextBox10.Text);
                if (RadioButton1.Checked == true)
                    komut.Parameters.AddWithValue("@cin", RadioButton1.Text);
                else if (RadioButton2.Checked == true)
                    komut.Parameters.AddWithValue("@cin", RadioButton2.Text);
                komut.Parameters.AddWithValue("@rsm", FileUpload1.FileName);

                komut.ExecuteNonQuery();
                baglanti.Close();
                Label9.Text = "guncellendi";
            }
            catch (Exception a)
            {
                Label9.Text = a.ToString();
            }
        }

    }
}