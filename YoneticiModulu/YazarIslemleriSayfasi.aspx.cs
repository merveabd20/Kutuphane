using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kutuphane.Classes;
namespace Kutuphane.YoneticiModulu
{
    public partial class YazarIslemleriSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //yazar ekle işlemi
            if (adTextBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String tablo = "Yazar(yazarAd,yazarSoyad)";
                String degerler = "'" + adTextBox.Text.ToString() + "','" + soyadTextBox.Text.ToString() + "'";
                OracleDatabase.GetInstance().VeriEkle(tablo, degerler);
                OracleDatabase.GetInstance().BaglantıKapa();
                adTextBox.Text = "";
                soyadTextBox.Text = "";
            }
        }

        protected void guncelleButton_Click(object sender, EventArgs e)
        {
            //yazar güncelleme işlemi
            if (IdTexBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String tablo = "Yazar";
                String kosul = "yazarAd='" + adTextBox.Text.ToString() + "',yazarSoyad='" + soyadTextBox.Text.ToString() + "' WHERE yazarID=" + IdTexBox.Text;
                OracleDatabase.GetInstance().VeriGuncelle(tablo, kosul);
                OracleDatabase.GetInstance().BaglantıKapa();
                adTextBox.Text = "";
                soyadTextBox.Text = "";
                IdTexBox.Text = "";
            }
        }

        protected void listeleButton_Click(object sender, EventArgs e)
        {
            //yazarları listeleme işlemi
            OracleDatabase.GetInstance().BaglantıAc();
            if (OracleDatabase.GetInstance().VeriGetir("Yazar") != null)
            {
                GridView1.DataSource = OracleDatabase.GetInstance().VeriGetir("Yazar");
                GridView1.DataBind();
            }
            OracleDatabase.GetInstance().BaglantıKapa();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            IdTexBox.Text = row.Cells[1].Text.ToString();
            adTextBox.Text = row.Cells[2].Text.ToString();
            soyadTextBox.Text = row.Cells[3].Text.ToString();
        }

        protected void silButton_Click(object sender, EventArgs e)
        {
            //yazar silme
            if (IdTexBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String komut = "Yazar where yazarID=" + IdTexBox.Text;
                OracleDatabase.GetInstance().VeriSil(komut);
                OracleDatabase.GetInstance().BaglantıKapa();
                adTextBox.Text = "";
                soyadTextBox.Text = "";
                IdTexBox.Text = "";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("KitapIslemleriSayfasi.aspx");
        }
    }
}