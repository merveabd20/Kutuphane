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
    public partial class BegenilenKitaplarAnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String komut = "begenilenKitaplar b, Kitap k, Uye u WHERE b.kitapID = k.kitapID AND u.uyeID =  " + Session["uye_id"];
            String deger = "k.kitapAdi,k.yayinEvi";
            OracleDatabase.GetInstance().BaglantıAc();
            OracleDataReader oku = OracleDatabase.GetInstance().VeriGetir(deger, komut);
            if (oku.HasRows)
            {
                GridView1.DataSource = oku;
                GridView1.DataBind();
            }
            OracleDatabase.GetInstance().BaglantıKapa();
        }
    }
}