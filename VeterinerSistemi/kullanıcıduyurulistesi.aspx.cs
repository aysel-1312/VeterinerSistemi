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
    public partial class kullanıcıduyurulistesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            baglanti.Open();
            string bastan_arama = "Select vettab.vetAd,vetduyurutab.duyuru,vetduyurutab.tarih from vetduyurutab inner join vettab on vettab.vetID = vetduyurutab.gonderenID ";
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