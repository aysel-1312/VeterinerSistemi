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
    public partial class kullanıcıprofil : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //id = Request.QueryString["kulID"];
            int kulID = Convert.ToInt32(Session["kulID"]);

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                string sorgu = "Select * from kullanicitab where kulID=@kulID";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@kulID",kulID);
                SqlDataReader dr = komut.ExecuteReader();
                while(dr.Read())
                {
                  Label1.Text = dr[3].ToString();
                    Label2.Text = dr[4].ToString();
                    Image1.ImageUrl =dr[5].ToString();
                    Label7.Text = dr[1].ToString();
                    Label6.Text = dr[2].ToString();
                    Label8.Text = dr[6].ToString();
                    Label4.Text = dr[8].ToString();
                }
            }
        }
    }
}