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
    public partial class AlinanKitaplarAnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String komut = "islem i, kitap k WHERE i.uyeID=" + Session["uye_id"] + " AND i.kitapID=k.kitapID";
            String deger = "k.kitapAdi,k.yayinEvi,i.islemTarihi,i.teslimTarihi,i.islemUcreti";
            OracleDatabase.GetInstance().BaglantıAc();
            OracleDataReader oku = OracleDatabase.GetInstance().VeriGetir(deger, komut);
            if (oku.HasRows)
            {
                GridView1.DataSource = oku;
                GridView1.DataBind();
            }
            else
            {
                yazLabel.Text = "Daha önce alınan bir kitap olmamıştır.";
            }
            OracleDatabase.GetInstance().BaglantıKapa();
        }
    }
}