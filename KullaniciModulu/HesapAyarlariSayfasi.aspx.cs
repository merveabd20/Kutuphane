using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kutuphane.Classes;
using Oracle.ManagedDataAccess.Client;

namespace Kutuphane.KullaniciModulu
{
    public partial class HesapAyarlariSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {//sayfa yüklendiğine kişinin bilgileri geliyor
            if (Page.IsPostBack == false)
            {
                veriGetir();
            }

        }

        private void veriGetir()
        {
            String komut = "Uye WHERE uyeID=" + Session["uye_id"];
            OracleDatabase.GetInstance().BaglantıAc();
            OracleDataReader oku;
            oku = OracleDatabase.GetInstance().VeriGetir(komut);
            if (oku.HasRows)
            {
                while (oku.Read())
                {
                    adTextBox.Text = oku.GetString(1).ToString();
                    soyadTextBox.Text = oku.GetString(2).ToString();
                    mailTextBox.Text = oku.GetString(3).ToString();
                }

            }
            OracleDatabase.GetInstance().BaglantıKapa();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //güncelleme işlemi
            OracleDatabase.GetInstance().BaglantıAc();
            String tablo = "Uye";
            String kosul = "uyeAd='" + adTextBox.Text.ToString() + "',uyeSoyad='" + soyadTextBox.Text.ToString() + "',uMail='" + mailTextBox.Text.ToString() + "' WHERE uyeID=" + Session["uye_id"];
            if (sifreTextBox.Text != "")
            {
                if (sifreTextBox.Text == tekrarTextBox.Text)
                {
                    kosul = "uyeAd='" + adTextBox.Text.ToString() + "',uyeSoyad='" + soyadTextBox.Text.ToString() + "',uMail='" + mailTextBox.Text.ToString() + "',uSifre='" + sifreTextBox.Text.ToString() + "' WHERE uyeID=" + Session["uye_id"];
                }
                else
                {
                    UyariMesajKutu("Şifreler Aynı değil!");
                }
            }
            OracleDatabase.GetInstance().VeriGuncelle(tablo, kosul);
            OracleDatabase.GetInstance().BaglantıKapa();
            //veriGetir();
            sifreTextBox.Text = "";
            tekrarTextBox.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //hesabı sil
            OracleDatabase.GetInstance().BaglantıAc();
            String kosul = "Uye WHERE uyeID=" + Session["uye_id"];
            OracleDatabase.GetInstance().VeriSil(kosul);
            OracleDatabase.GetInstance().BaglantıKapa();
            UyariMesajKutu("Hesap Silindi!");
            Response.Redirect("/MisafirModulu/MisafirAnaSayfasi.aspx");
        }

        void UyariMesajKutu(string mesaj)
        {
            ClientScriptManager cs = Page.ClientScript;
            cs.RegisterStartupScript(this.GetType(), "Mesaj", "<script>alert('" + mesaj + "')</script>", false);
        }
    }
}