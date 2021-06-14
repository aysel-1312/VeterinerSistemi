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
    public partial class petekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("petekle.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("petlerim.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string kulID = Session["kulID"].ToString();
            if (Page.IsValid)
            {
                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");

                SqlCommand komut = new SqlCommand();

                try
                {
                    komut = new SqlCommand("INSERT INTO pettab (petAd,petRsm,petcinsiyet,pet,kID) VALUES(@ad,@rsm,@cin,@pet,@kulID)", baglanti);


                    komut.Parameters.AddWithValue("@ad", TextBox1.Text);
                    komut.Parameters.AddWithValue("@kulID", Convert.ToInt32(kulID));
                    komut.Parameters.AddWithValue("@pet", DropDownList1.SelectedValue);
                   
                    if (RadioButton1.Checked == true)
                        komut.Parameters.AddWithValue("@cin", RadioButton1.Text);
                    else if (RadioButton2.Checked == true)
                        komut.Parameters.AddWithValue("@cin", RadioButton2.Text);
                    komut.Parameters.AddWithValue("@rsm", "~/RESİMLER/" + FileUpload1.PostedFile.FileName);




                    baglanti.Open();
                    komut.ExecuteNonQuery();
                    Label6.Text = "Kayıt Eklendi";
                    //  GridView1.DataBind();
                }
                catch (Exception a)
                {


                    Label6.Text = a.ToString();
                }
                finally
                {
                    baglanti.Close();
                }

            }
        }
    }
}