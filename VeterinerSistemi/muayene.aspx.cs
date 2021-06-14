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
    public partial class muayene : System.Web.UI.Page
    {
        public int degisken;
        public string veri;
        protected void Page_Load(object sender, EventArgs e)
        {

           
            //DropDownList1.Text = DropDownList1.CurrentRow.Cells[1].Value.ToString();

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


          
            //COMBOBOX İÇERİSİ
            string sorgu3 = "select * from pettab";
            SqlCommand komut3 = new SqlCommand(sorgu3, baglanti);
            baglanti.Open();
            SqlDataReader dr1 = komut3.ExecuteReader();
            DropDownList2.DataTextField = "petAd";
            DropDownList2.DataValueField = "petID";

            DropDownList2.DataSource = dr1;
            DropDownList2.DataBind();
            baglanti.Close();

            string sorgu1 = "select * from hiztab";
            SqlCommand komut1 = new SqlCommand(sorgu1, baglanti);
            baglanti.Open();
            SqlDataReader dr3 = komut1.ExecuteReader();
            DropDownList3.DataTextField = "hizsec";
            DropDownList3.DataValueField = "hizID";

            DropDownList3.DataSource = dr3;
            DropDownList3.DataBind();
            baglanti.Close();

        }

       

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            /* DropDownList2.Items.Clear();
             SqlConnection baglanti2 = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");

             string sorgu3 = "select * from pettab where kID=  '" + int.Parse(DropDownList1.SelectedItem.ToString())+ "'";
             SqlCommand komut3 = new SqlCommand(sorgu3, baglanti2);
             baglanti2.Open();
             SqlDataReader dr1 = komut3.ExecuteReader();


             while (dr1.Read())
             {
                 degisken = int.Parse(dr1["petID"].ToString());
                 veri = dr1["petAd"].ToString();



                 DropDownList2.Items.Add(veri);


             }
             try
             {
                 DropDownList1.SelectedIndex = 5;
             }
             catch
             {
                 DropDownList2.Text = "";
             }
             baglanti2.Close();*/
           

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");

            baglanti.Open();
            string sql = "insert into muayenetab (hizmet,tarih,petID,kulID,ucret) values (@phizmet,@ptarih,@ppetID,@pkulID,@pucret)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@phizmet", DropDownList3.SelectedIndex.ToString());
            komut.Parameters.AddWithValue("@pkulID", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@ppetID", DropDownList2.SelectedValue);
            komut.Parameters.AddWithValue("@ptarih", DateTime.Now);

            if (RadioButton1.Checked == true)
                komut.Parameters.AddWithValue("@pucret", RadioButton1.Text);
            else if (RadioButton2.Checked == true)
                komut.Parameters.AddWithValue("@pucret", RadioButton2.Text);

            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Write("Eklendi");

            
        }
    }
}