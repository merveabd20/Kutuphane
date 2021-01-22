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
    public partial class KitaplarAnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //sayfa yüklendiğinde tüm kitaplar listelenecek
            OracleDatabase.GetInstance().BaglantıAc();
            if (OracleDatabase.GetInstance().VeriGetir("Kitap") != null)
            {
                GridView1.DataSource = OracleDatabase.GetInstance().VeriGetir("Kitap");
                GridView1.DataBind();
            }
            OracleDatabase.GetInstance().BaglantıKapa();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //kitapları beğen
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            int id = Convert.ToInt32(row.Cells[1].Text.ToString());
            String tablo = "begenilenKitaplar(kitapID,uyeID)";
            String degerler = id + "," + Convert.ToInt32(Session["uye_id"]);
            OracleDatabase.GetInstance().BaglantıAc();
            OracleDatabase.GetInstance().VeriEkle(tablo, degerler);
            OracleDatabase.GetInstance().BaglantıKapa();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //kitap ara
            if (aramaTextBox.Text != "")
            {
                String komut = "Kitap WHERE kitapAdi LIKE '%" + aramaTextBox.Text.ToString() + "%'";
                String deger = "kitapAdi";
                OracleDatabase.GetInstance().BaglantıAc();
                OracleDataReader oku;
                oku = OracleDatabase.GetInstance().VeriGetir(deger,komut);
                if (oku.HasRows)
                {
                    yazLabel.Text = "";
                    GridView1.DataSource = oku;
                    GridView1.DataBind();
                }
                else
                {
                    yazLabel.Text = "Aranılan kitap bulunamadı.";
                }

                OracleDatabase.GetInstance().BaglantıKapa();
            }
        }
    }
}