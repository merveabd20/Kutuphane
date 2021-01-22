using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Oracle.ManagedDataAccess.Client;
using System.Data.Sql;
using static System.Net.Mime.MediaTypeNames;

namespace Kutuphane.Classes
{
    public class OracleDatabase : IDATABASE
    {
        //singleton design pattern kullanılmıştır
        private static OracleDatabase instance;
        private OracleDatabase() { }

        private static void createInstance()
        {
            if (instance == null)
            {
                instance = new OracleDatabase();
            }

        }

        public static OracleDatabase GetInstance()
        {
            if (instance == null) createInstance();
            return instance;
        }

        OracleConnection baglanti;

        public void BaglantıAc()
        {
            try
            {
                baglanti = new OracleConnection();
                baglanti.ConnectionString = "User Id=SYSTEM;Password=king1997;Data Source=localhost:1521/XEPDB1;";
                baglanti.Open();
            }
            catch (OracleException)
            {
               
            }

        }

        public OracleDataReader VeriGetir(String komut)
        {
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = baglanti;
            cmd.CommandText = "SELECT * FROM " + komut;
            cmd.CommandType = CommandType.Text;
            try
            {
                OracleDataReader oku = cmd.ExecuteReader();
                return oku;

            }
            catch (OracleException)
            {
                
            }
            return null;
        }

        public OracleDataReader VeriGetir(String deger, String kosul)
        {
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = baglanti;
            cmd.CommandText = "SELECT " + deger + " FROM " + kosul;
            cmd.CommandType = CommandType.Text;
            try
            {
                OracleDataReader oku = cmd.ExecuteReader();
                return oku;

            }
            catch (OracleException)
            {
                
            }
            return null;
        }

        public void VeriEkle(String tablo, String degerler)
        {
            try
            {
                OracleCommand cmd = new OracleCommand();
                cmd.Connection = baglanti;
                cmd.CommandText = "INSERT INTO " + tablo + " VALUES(" + degerler + ")";
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (OracleException)
            {
                
            }
        }



        public void VeriGuncelle(String tablo, String kosul)
        {
            try
            {
                OracleCommand cmd = new OracleCommand();
                cmd.Connection = baglanti;
                cmd.CommandText = "UPDATE " + tablo + " SET " + kosul;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (OracleException)
            {
                
            }
        }

        public void VeriSil(String kosul)
        {
            try
            {
                OracleCommand cmd = new OracleCommand();
                cmd.Connection = baglanti;
                cmd.CommandText = "DELETE FROM  " + kosul;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (OracleException)
            {
               
            }
        }
        public void BaglantıKapa()
        {
            try
            {
                baglanti.Close();
            }
            catch (OracleException)
            {
                
            }
        }
    }
}