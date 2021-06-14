using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace VeterinerSistemi
{
    public class sqlbaglan
    {
        public SqlConnection baglanti()
            {
            SqlConnection baglan = new SqlConnection("Integrated Security=True;Data Source=.;İnitial Catalog=vetproje");
            baglan.Open();
            return baglan;
}
    }
}