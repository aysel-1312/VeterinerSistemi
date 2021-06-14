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
    public partial class petlerim : System.Web.UI.Page
    {
        string id = "";
        string islem = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["petID"] = 0;
            //silme işlemleri
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["petID"];
                islem = Request.QueryString["islem"];
            }
            if (islem == "sil")
            {
                string sorgu3 = "Delete from pettab where petID=@pID";
                SqlConnection baglanti2 = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                baglanti2.Open();
                SqlCommand komut3 = new SqlCommand(sorgu3, baglanti2);
                komut3.Parameters.AddWithValue("@pID", id);
                komut3.ExecuteNonQuery();
                baglanti2.Close();

            }

            
            int kulID = Convert.ToInt32(Session["kulID"]);
            DataSet pet = Sql.petCek(kulID);
            DataList1.DataSource = pet.Tables[0];
            DataList1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("petlerim.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("petekle.aspx");
        }
    }
}