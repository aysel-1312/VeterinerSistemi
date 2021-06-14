﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace VeterinerSistemi
{
    public partial class yoneticiduyuruekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("yoneticiduyurulistesi.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("yoneticiduyuruekle.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");

            baglanti.Open();
            string sql = "insert into duyurutab (gonderenID,duyuru,tarih) values (@pgonderen,@pduyuru,@ptarih)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pgonderen", Convert.ToInt32(Session["yonID"]));
            komut.Parameters.AddWithValue("@pduyuru", TextBox1.Text);
            komut.Parameters.AddWithValue("@ptarih", DateTime.Now);

            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Write("gönderildi");
        }
    }
}