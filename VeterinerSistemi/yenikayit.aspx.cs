using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;

namespace VeterinerSistemi
{
    public partial class yenikayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");

                SqlCommand komut = new SqlCommand();

                try
                {
                    komut = new SqlCommand("INSERT INTO vettab (kulAd,kulSyd,kdgmYer,kuldgmTrh,kulcin) VALUES(@adi, @soyadi,@yer,@trh,@cin)", baglanti);


                    komut.Parameters.AddWithValue("@adi", TextBox1.Text);
                    komut.Parameters.AddWithValue("@soyadi", TextBox2.Text);
                    komut.Parameters.AddWithValue("@yer", TextBox8.Text);
                    komut.Parameters.AddWithValue("@trh", TextBox9.Text);

                    if (RadioButton1.Checked == true)
                        komut.Parameters.AddWithValue("@cin", RadioButton1.Text);
                    else if (RadioButton2.Checked == true)
                        komut.Parameters.AddWithValue("@cin", RadioButton2.Text);

                    baglanti.Open();
                    komut.ExecuteNonQuery();
                    Label9.Text = "Kayıt Eklendi";
                    //  GridView1.DataBind();
                }
                catch (Exception a)
                {


                    Label9.Text = a.ToString();
                }
                finally
                {
                    baglanti.Close();
                }

            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            TextBox9.Text = Calendar1.SelectedDate.ToString();
            Calendar1.Visible = false;
        }
    }
}