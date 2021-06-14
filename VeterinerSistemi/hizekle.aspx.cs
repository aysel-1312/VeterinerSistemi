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
    public partial class hizekle : System.Web.UI.Page
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
                    komut = new SqlCommand("INSERT INTO hiztab (hizsec,ucret) VALUES(@sec, @ucret)", baglanti);


                    komut.Parameters.AddWithValue("@sec", TextBox1.Text);
                    komut.Parameters.AddWithValue("@ucret", TextBox2.Text);

                    baglanti.Open();
                    komut.ExecuteNonQuery();
                    Label3.Text = "Kayıt Eklendi";

                }
                catch (Exception a)
                {


                    Label3.Text = a.ToString();
                }
                finally
                {
                    baglanti.Close();
                }

            }
        }
    }
}