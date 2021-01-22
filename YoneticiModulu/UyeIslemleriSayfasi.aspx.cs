using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kutuphane.Classes;
namespace Kutuphane.YoneticiModulu
{
    public partial class UyeIslemleriSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //üye ekle
            if (adTextBox.Text != "" && soyadTextBox.Text != "" && mailTextBox.Text != "" && sifreTextBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String tablo = "Uye(uyeAd,uyeSoyad,uMail,uSifre)";
                String degerler = "'" + adTextBox.Text + "','" + soyadTextBox.Text + "','" + mailTextBox.Text + "','" + sifreTextBox.Text + "'";
                OracleDatabase.GetInstance().VeriEkle(tablo, degerler);
                OracleDatabase.GetInstance().BaglantıKapa();
                adTextBox.Text = "";
                soyadTextBox.Text = "";
                mailTextBox.Text = "";
                sifreTextBox.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //üye sil
            if (IDTextBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String komut = "Uye WHERE uyeID=" + IDTextBox.Text;
                OracleDatabase.GetInstance().VeriSil(komut);
                OracleDatabase.GetInstance().BaglantıKapa();
                IDTextBox.Text = "";
                adTextBox.Text = "";
                soyadTextBox.Text = "";
                mailTextBox.Text = "";
                sifreTextBox.Text = "";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //üyeleri listele
            OracleDatabase.GetInstance().BaglantıAc();
            if (OracleDatabase.GetInstance().VeriGetir("Uye") != null)
            {
                GridView1.DataSource = OracleDatabase.GetInstance().VeriGetir("Uye");
                GridView1.DataBind();
            }
            OracleDatabase.GetInstance().BaglantıKapa();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //güncelle
            if (IDTextBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String tablo = "Uye";
                String kosul = "uyeAd='" + adTextBox.Text + "',uyeSoyad='" + soyadTextBox.Text + "',uMail='" + mailTextBox.Text + "',uSifre='" + sifreTextBox.Text + "' WHERE uyeID=" + IDTextBox.Text;
                OracleDatabase.GetInstance().VeriGuncelle(tablo, kosul);
                OracleDatabase.GetInstance().BaglantıKapa();
                IDTextBox.Text = "";
                adTextBox.Text = "";
                soyadTextBox.Text = "";
                mailTextBox.Text = "";
                sifreTextBox.Text = "";
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int a;
            a = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[a];
            IDTextBox.Text = row.Cells[1].Text.ToString();
            adTextBox.Text = row.Cells[2].Text.ToString();
            soyadTextBox.Text = row.Cells[3].Text.ToString();
            mailTextBox.Text = row.Cells[4].Text.ToString();
            sifreTextBox.Text = row.Cells[5].Text.ToString();
        }
    }
}