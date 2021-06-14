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
    public partial class hizdetayguncelle : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");



        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["hizID"];
            Session["hizID"]=id;

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                string sorgu = "Select * from hiztab where hizID=@hizID";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@hizID", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
 
                    SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand("UPDATE hiztab set hizsec = @hsec, ucret = @ucret  where hizID = @id", baglanti);

                    komut.Parameters.AddWithValue("@id", id);
                    komut.Parameters.AddWithValue("@hsec", TextBox1.Text);
                    komut.Parameters.AddWithValue("@ucret", TextBox2.Text);

                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    Label1.Text = "guncellendi";

                
            }
            catch (Exception a)
            {
                Label1.Text = a.ToString();
            }


        }
    
    }
}