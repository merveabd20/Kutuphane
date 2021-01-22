using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kutuphane.KullaniciModulu
{
    public partial class Uye : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //kitapları listele
            Response.Redirect("/KullaniciModulu/KitaplarAnaSayfa.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //beğenilen kitapları listele
            Response.Redirect("/KullaniciModulu/BegenilenKitaplarAnaSayfa.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //alınan kitapları listele
            Response.Redirect("/KullaniciModulu/AlinanKitaplarAnaSayfa.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //hesap ayarları
            Response.Redirect("/KullaniciModulu/HesapAyarlariSayfasi.aspx");
        }
    }
}