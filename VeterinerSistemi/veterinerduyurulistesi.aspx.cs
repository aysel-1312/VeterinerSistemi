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
    public partial class veterinerduyurulistesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            baglanti.Open();
            string bastan_arama = "Select yontab.yonkulad,duyurutab.duyuru,duyurutab.tarih from duyurutab inner join yontab on yontab.yonID = duyurutab.gonderenID ";

            SqlCommand komut = new SqlCommand();

            SqlDataAdapter adaptor = new SqlDataAdapter(bastan_arama, baglanti);
            DataTable tablo = new DataTable();
            adaptor.Fill(tablo);
            DataList1.DataSource = tablo;
            DataList1.DataBind();
            baglanti.Close();
        }

        
    }
}