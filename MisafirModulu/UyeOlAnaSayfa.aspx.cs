using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kutuphane.Classes;
namespace Kutuphane.MisafirModulu
{
    public partial class UyeOlAnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //üye kayıt (insert işlemi)
            if (adTextBox.Text != "" && soyadTextBox.Text != "" && mailTextBox.Text != "" && sifreTextBox.Text != "")
            {//verilerin eksik olup olmadığını kontrol ediyoruz
                String sifre = "";
                if (sifreTextBox.Text == tekrarTextBox.Text)
                {
                    sifre = sifreTextBox.Text.ToString();//şifrelerin aynı olması için kontrol yapıyoruz
                    String tablo = "Uye(uyeAd,uyeSoyad,uMail,uSifre)";
                    String degerler = "'" + adTextBox.Text.ToString() + "','" + soyadTextBox.Text.ToString() + "','" + mailTextBox.Text.ToString() + "','" + sifre + "'";
                    OracleDatabase.GetInstance().BaglantıAc();
                    OracleDatabase.GetInstance().VeriEkle(tablo, degerler);
                    OracleDatabase.GetInstance().BaglantıKapa();
                    UyariMesajKutu("Üye olundu!");
                }
                else
                {
                    UyariMesajKutu("Şifreler aynı değil!");
                }
            }
        }

        void UyariMesajKutu(string mesaj)
        {
            ClientScriptManager cs = Page.ClientScript;
            cs.RegisterStartupScript(this.GetType(), "Mesaj", "<script>alert('" + mesaj + "')</script>", false);
        }
    }
}