using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kutuphane.Classes;
using Oracle.ManagedDataAccess.Client;

namespace Kutuphane.YoneticiModulu
{
    public partial class KitapIslemleriSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                //yazar id'leri gösterme
                String deger = "yazarAd||' '||yazarSoyad AS Yazar,yazarID";
                OracleDatabase.GetInstance().BaglantıAc();
                DropDownList1.DataTextField = "Yazar";
                DropDownList1.DataValueField = "yazarID";
                DropDownList1.DataSource = OracleDatabase.GetInstance().VeriGetir(deger, "Yazar");
                DropDownList1.DataBind();
                OracleDatabase.GetInstance().BaglantıKapa();
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //kitapları listeleme işlemi
            String deger = "kitapID AS ID,kitapAdi AS Ad,kitapBasimYili AS BasımYılı,kacinciBasim As BasımTarihi,yayinEvi As YayınEvi,yazarID";
            OracleDatabase.GetInstance().BaglantıAc();
            OracleDataReader islem;
            islem = OracleDatabase.GetInstance().VeriGetir(deger, "Kitap");
            if (islem != null)
            {
                GridView1.DataSource = islem;
                GridView1.DataBind();
            }
            OracleDatabase.GetInstance().BaglantıKapa();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //kitap ekle işlemi
            if (adTxtBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String tablo = "Kitap(kitapAdı,kitapBasımYılı,yayinEvi,kacıncıBasım,yazarID)";
                String degerler = "'" + adTxtBox.Text.ToString() + "','" + yilTextBox.Text.ToString() + "','" + yayinEviTextBox.Text + "'," + kacinciTextBox.Text + "," + DropDownList1.SelectedValue;
                OracleDatabase.GetInstance().VeriEkle(tablo, degerler);
                //  adTxtBox.Text = DropDownList1.SelectedValue;
                OracleDatabase.GetInstance().BaglantıKapa();
                adTxtBox.Text = "";
                yilTextBox.Text = "";
                kacinciTextBox.Text = "";
                yayinEviTextBox.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //kitap sil
            if (IDTextBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String komut = "Kitap WHERE kitapID=" + IDTextBox.Text;
                OracleDatabase.GetInstance().VeriSil(komut);
                OracleDatabase.GetInstance().BaglantıKapa();
                IDTextBox.Text = "";
                adTxtBox.Text = "";
                yilTextBox.Text = "";
                kacinciTextBox.Text = "";
                yayinEviTextBox.Text = "";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {//kitabı seçince textboxlarda görünmesini sağlandı
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            IDTextBox.Text = row.Cells[1].Text.ToString();
            adTxtBox.Text = row.Cells[2].Text.ToString();
            yilTextBox.Text = row.Cells[3].Text.ToString();
            kacinciTextBox.Text = row.Cells[4].Text.ToString();
            yayinEviTextBox.Text = row.Cells[5].Text.ToString();
            DropDownList1.SelectedValue = row.Cells[6].Text.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //kitap güncelle
            if (IDTextBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String tablo = "Kitap";
                String kosul = "kitapAdı='" + adTxtBox.Text.ToString() + "',kitapBasımYılı='" + yilTextBox.Text.ToString() + "',yayinEvi='" + yayinEviTextBox.Text + "', kacıncıBasım=" + kacinciTextBox.Text + ",yazarID=" + DropDownList1.SelectedValue + " WHERE kitapID=" + IDTextBox.Text;
                OracleDatabase.GetInstance().VeriGuncelle(tablo, kosul);
                OracleDatabase.GetInstance().BaglantıKapa();
                IDTextBox.Text = "";
                adTxtBox.Text = "";
                yilTextBox.Text = "";
                kacinciTextBox.Text = "";
                yayinEviTextBox.Text = "";
            }
        }
    }
}