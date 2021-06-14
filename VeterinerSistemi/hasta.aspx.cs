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
    public partial class hasta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public void arama(string aranan)
        { 

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            baglanti.Open();
            string bastan_arama = "select kulID, kulAd,kulSyd from kullanicitab where kulAd like '%" + aranan + "%' ";
            
            SqlCommand komut = new SqlCommand();
          
            SqlDataAdapter adaptor = new SqlDataAdapter(bastan_arama, baglanti);
            DataTable tablo = new DataTable();
            adaptor.Fill(tablo);
            DataList2.DataSource = tablo;
            DataList2.DataBind();
            baglanti.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            arama(kullaniciAra.Text);
        }
    } 

    }
   