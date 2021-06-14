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
    public partial class veterinerduyuruliste : System.Web.UI.Page
    {
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //silme işlemleri
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["vetduyuruID"];
                islem = Request.QueryString["islem"];
            }
            if (islem == "sil")
            {
                string sorgu3 = "Delete from vetduyurutab where vetduyuruID=@pID";
                SqlConnection baglanti2 = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                baglanti2.Open();
                SqlCommand komut3 = new SqlCommand(sorgu3, baglanti2);
                komut3.Parameters.AddWithValue("@pID", id);
                komut3.ExecuteNonQuery();
                baglanti2.Close();
            }  
            int gonderenID = Convert.ToInt32(Session["vetID"]);
            DataSet duyuru = Sql.gonderilenDuyuruVET(gonderenID);
            DataList1.DataSource = duyuru.Tables[0];
            DataList1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("veterinerduyuruliste.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("veterinerduyuruyaz.aspx");
        }
    }
}
   