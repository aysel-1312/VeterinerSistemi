using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;

namespace VeterinerSistemi
{
    public partial class yoneticimesajaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int gidenID = Convert.ToInt32(Session["yonID"]);
            DataSet mesaj = Sql.mesajCek(gidenID);
            DataList1.DataSource = mesaj.Tables[0];
            DataList1.DataBind();
        }

     

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("yoneticimesajyaz.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("yoneticigöderilenmesajlar.aspx");
        }
    }
}