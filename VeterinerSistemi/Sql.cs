using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace VeterinerSistemi
{
    public class Sql
    {

        public static DataSet petCek(int kulID)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            string sql = "Select pettab.petID,pettab.kID,pettab.petAd from pettab inner join kullanicitab on kullanicitab.kulID=pettab.kID where kID=@pID";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pID", kulID);
            DataSet alintiDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(alintiDS);
            baglanti.Close();
            return alintiDS;
        }
        public static DataSet gonderilenDuyuruyon(int gonderenID)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            string sql = "Select yontab.yonkulad,duyurutab.duyuru,duyurutab.tarih,duyurutab.duyuruID from duyurutab inner join yontab on yontab.yonID=duyurutab.gonderenID where gonderenID=@pID";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pID", gonderenID);
            DataSet alintiDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(alintiDS);
            baglanti.Close();
            return alintiDS;
        }
        public static DataSet gonderilenDuyuruVET(int gonderenID)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            string sql = "Select vettab.vetAd,vetduyurutab.duyuru,vetduyurutab.tarih,vetduyurutab.vetduyuruID from vetduyurutab inner join vettab on vettab.vetID=vetduyurutab.gonderenID where gonderenID=@pID";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pID", gonderenID);
            DataSet alintiDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(alintiDS);
            baglanti.Close();
            return alintiDS;
        }
        public static DataSet gonderilenMesajyon(int gonderenID)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            string sql = "Select yontab.yonkulad,msgtab.msg,msgtab.tarih from msgtab inner join yontab on yontab.yonID=msgtab.gidenID where gonderenID=@pID";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pID", gonderenID);
            DataSet alintiDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(alintiDS);
            baglanti.Close();
            return alintiDS;
        }
        public static DataSet gonderilenMesajvet(int gonderenID)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            string sql = "Select kullanicitab.kulAd,msgtab.msg,msgtab.tarih from msgtab inner join kullanicitab on kullanicitab.kulID=msgtab.gidenID where gonderenID=@pID";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pID", gonderenID);
            DataSet alintiDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(alintiDS);
            baglanti.Close();
            return alintiDS;
        }
        public static DataSet gonderilenMesaj(int gonderenID)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            string sql = "Select vettab.vetAd,msgtab.msg,msgtab.tarih from msgtab inner join vettab on vettab.vetID=msgtab.gidenID where gonderenID=@pID";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pID", gonderenID);
            DataSet alintiDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(alintiDS);
            baglanti.Close();
            return alintiDS;
        }
        public static DataSet mesajCek(int gidenID)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            string sql = "Select vettab.vetAd,msgtab.msg,msgtab.tarih from msgtab inner join vettab on vettab.vetID=msgtab.gonderenID where gidenID=@pID";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pID", gidenID);
            DataSet alintiDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(alintiDS);
            baglanti.Close();
            return alintiDS;
        }
        public static DataSet mesajCekvet(int gidenID)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            string sql = "Select kullanicitab.kulAd,msgtab.msg,msgtab.tarih from msgtab inner join kullanicitab on kullanicitab.kulID=msgtab.gonderenID where gidenID=@pID";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pID", gidenID);
            DataSet alintiDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(alintiDS);
            baglanti.Close();
            return alintiDS;
        }
        public static DataSet mesajCekyon(int gidenID)
        {

            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            string sql = "Select vettab.vetAd,msgtab.msg,msgtab.tarih from msgtab inner join vettab on vettab.vetID=msgtab.gonderenID where gidenID=@pID";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pID", gidenID);
            DataSet alintiDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(alintiDS);
            baglanti.Close();
            return alintiDS;
        }
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = vetproje");
            baglanti.Open();
            return (baglanti);
        }
        public int cmd(string sqlcumle)
        {
            SqlConnection baglan = this.baglan();
            SqlCommand sorgu = new SqlCommand(sqlcumle,baglan);
            int sonuc = 0;
            try
            {
            sonuc = sorgu.ExecuteNonQuery();
            }
            catch(SqlException ex )
            {
                throw new Exception(ex.Message + "(" + sqlcumle + ")");
            }
            sorgu.Dispose();
            baglan.Open();
            baglan.Dispose();
            return (sonuc);

        }


    }
}