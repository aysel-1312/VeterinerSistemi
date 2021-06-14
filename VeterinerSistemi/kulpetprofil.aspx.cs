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
    public partial class kulpetprofil : System.Web.UI.Page
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["petID"];
            Session["petID"] = id;

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                string sorgu = "Select * from pettab where petID=@petID";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@petID", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    Label5.Text = dr[1].ToString();
                    Label6.Text = dr[3].ToString();
                    Image2.ImageUrl = dr[2].ToString();
                    Label7.Text = dr[4].ToString();
                    
                    
                }
            }
        }
    }
}