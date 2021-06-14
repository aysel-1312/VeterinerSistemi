using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
namespace VeterinerSistemi
{
    public partial class sifreunuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }


            protected void btnGiris_Click(object sender, EventArgs e)
            {

                SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
                SqlCommand sorgu = new SqlCommand("SELECT * FROM kullanicitab WHERE email=@user", baglanti);
                if (ConnectionState.Closed == baglanti.State)
                    baglanti.Open();
                sorgu.Parameters.AddWithValue("@user", txtemail.Text);
                SqlDataReader dr = sorgu.ExecuteReader();
                if (dr.Read())
                {
                    MailMessage mesaj = new MailMessage(); mesaj.To.Add(new MailAddress(txtemail.Text));
                    mesaj.From = new MailAddress(txtemail.Text, "Yönetim Mail Adresiniz ");
                    mesaj.Body = "email = " + dr["email"].ToString() + "\n" + "kulAd: " + dr["kulAd"].ToString() + "\n" + "kulSif:" + dr["kulSif"].ToString() + "\n";



                    SmtpClient client = new SmtpClient();
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    client.Credentials = new NetworkCredential("aysel.27altun@gmail.com", "Aysel.1312");
                    client.EnableSsl = true;
                    try
                    {
                        client.Send(mesaj);
                        Label1.Text = "Şifreniz E-Mail adresinize gönderilmiştir.Teşekkür ederiz !";
                        Response.Redirect("kullanıcıGiris.aspx");
                    }
                    catch
                    {
                        Label1.Text = "Mesaj Gönderilirken bir hata oluştu.";
                        


                    }
                }
                else
                {
                    lblMesaj.Text = "E-mail adresi kayıtlı değil!";

                }
                dr.Close();
                txtemail.Text = "";
                System.Threading.Thread.Sleep(2000);
            }
        }


    }

