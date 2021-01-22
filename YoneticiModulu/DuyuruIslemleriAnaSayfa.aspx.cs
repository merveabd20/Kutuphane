using Kutuphane.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kutuphane.YoneticiModulu
{
    public partial class DuyuruIslemleriAnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (duyuruTextBox.Text != "" )
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String tablo = "Duyuru(metin,duyuruTarihi,yoneticiID)";
                String degerler = "'"+duyuruTextBox.Text+"',TO_DATE('" + DateTime.Now.ToShortDateString() + "','DD/MM/YYYY')," + Session["yonetici_id"];
                OracleDatabase.GetInstance().VeriEkle(tablo, degerler);
                OracleDatabase.GetInstance().BaglantıKapa();
                duyuruTextBox.Text = "";
                
            }
        }

        protected void silButton_Click(object sender, EventArgs e)
        {
            if (IdTexBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String komut = "Duyuru where duyuruID=" + IdTexBox.Text;
                OracleDatabase.GetInstance().VeriSil(komut);
                OracleDatabase.GetInstance().BaglantıKapa();
                duyuruTextBox.Text = "";
            }
        }

        protected void guncelleButton_Click(object sender, EventArgs e)
        {
            if (IdTexBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String tablo = "Duyuru";
                String kosul = "metin='" + duyuruTextBox.Text.ToString() + "',duyuruTarihi=TO_DATE('" + DateTime.Now.ToShortDateString() + "', 'DD/MM/YYYY') WHERE duyuruID=" + IdTexBox.Text;
                OracleDatabase.GetInstance().VeriGuncelle(tablo, kosul);
                OracleDatabase.GetInstance().BaglantıKapa();
                duyuruTextBox.Text = "";
            }
        }

        protected void listeleButton_Click(object sender, EventArgs e)
        {
            OracleDatabase.GetInstance().BaglantıAc();
            if (OracleDatabase.GetInstance().VeriGetir("Duyuru") != null)
            {
                GridView1.DataSource = OracleDatabase.GetInstance().VeriGetir("Duyuru");
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
            duyuruTextBox.Text = row.Cells[3].Text.ToString();
        }
    }
}