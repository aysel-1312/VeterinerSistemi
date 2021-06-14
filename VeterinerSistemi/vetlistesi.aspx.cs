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
    public partial class vetlistesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //silme işlemleri
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["vetID"];
                islem = Request.QueryString["islem"];
            }
            if (islem == "sil")
            {
                string sorgu3 = "Delete from vettab where vetID=@pID";
                SqlConnection baglanti2 = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                baglanti2.Open();
                SqlCommand komut3 = new SqlCommand(sorgu3, baglanti2);
                komut3.Parameters.AddWithValue("@pID", id);
                komut3.ExecuteNonQuery();
                baglanti2.Close();

            }
        }
            string id = "";
            string islem = "";

        public void arama(string aranan)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            baglanti.Open();
            string bastan_arama = "select vetID, vetAd,vetSyd from vettab where vetAd like '%" + aranan + "%' ";

            SqlCommand komut = new SqlCommand();

            SqlDataAdapter adaptor = new SqlDataAdapter(bastan_arama, baglanti);
            DataTable tablo = new DataTable();
            adaptor.Fill(tablo);
            DataList1.DataSource = tablo;
            DataList1.DataBind();
            baglanti.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            arama(TextBox1.Text);
        }
    }
}
      
      
       
 