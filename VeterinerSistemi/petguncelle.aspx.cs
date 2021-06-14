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
    public partial class petguncelle : System.Web.UI.Page
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                id = Request.QueryString["petID"];
                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                baglanti.Open();
                SqlCommand komut = new SqlCommand("UPDATE pettab set kID=@kulID,petAd=@Ad,pet=@pet,petRsm=@rsm,petcinsiyet=@cin where petID = @id", baglanti);

                komut.Parameters.AddWithValue("@id", id);
                komut.Parameters.AddWithValue("@kulID", Convert.ToInt32(Session["kulID"]));
                komut.Parameters.AddWithValue("@Ad", TextBox1.Text);
                komut.Parameters.AddWithValue("@pet", DropDownList1.SelectedValue);


                if (RadioButton1.Checked == true)
                    komut.Parameters.AddWithValue("@cin", RadioButton1.Text);
                else if (RadioButton2.Checked == true)
                    komut.Parameters.AddWithValue("@cin", RadioButton2.Text);
                komut.Parameters.AddWithValue("@rsm", FileUpload1.FileName);

                komut.ExecuteNonQuery();
                baglanti.Close();
                Label2.Text = "guncellendi";
            }
            catch (Exception a)
            {
                Label2.Text = a.ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("petekle.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("petlerim.aspx");
        }
    }
}