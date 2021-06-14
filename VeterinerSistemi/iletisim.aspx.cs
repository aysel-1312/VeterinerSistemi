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
    public partial class iletisim : System.Web.UI.Page
     {
      
   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      /*  protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("insert into Haritalar (Adres,x,y,Acıklama) values (@Adres,@x,@y,@Acıklama)", baglanti);

            cmd.Parameters.AddWithValue("@Adres", address.Text.ToString());
            cmd.Parameters.AddWithValue("@x", latitude.Text.ToString());
            cmd.Parameters.AddWithValue("@y", longitude.Text.ToString());
            cmd.Parameters.AddWithValue("@Acıklama", aciklama.Text.ToString());
            cmd.ExecuteNonQuery();
            baglanti.Close(); 
            Label1.Visible = true;
            Label1.Text = "Ekleme Başarılı!";
            
        }*/
    }
}