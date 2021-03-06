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
    public partial class kullanıcıgöderilenmesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int gonderilenID = Convert.ToInt32(Session["kulID"]);
            DataSet mesaj = Sql.gonderilenMesaj(gonderilenID);
            DataList1.DataSource = mesaj.Tables[0];
            DataList1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcıgöderilenmesajlar.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcımesajyaz.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcımesajlar.aspx");
        }
    }
}