using Kutuphane.Classes;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kutuphane.MisafirModulu
{
    public partial class UyeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //üye girişi
            if (mailTextBox.Text != "" && passTextBox.Text != "")
            {
                String komut = "Uye WHERE uMail='" + mailTextBox.Text.ToString() + "' AND uSifre='" + passTextBox.Text.ToString() + "'";
                OracleDatabase.GetInstance().BaglantıAc();
                OracleDataReader oku;
                oku = OracleDatabase.GetInstance().VeriGetir(komut);
                oku.Read();
                if (oku.HasRows)
                {
                    Session.Add("uye_id", oku.GetString(0).ToString());
                    Response.Redirect("/KullaniciModulu/UyeAnaSayfasi.aspx");
                }
                else
                {
                    UyariMesajKutu("Mail ya da şifre hatalı!");
                }
                OracleDatabase.GetInstance().BaglantıKapa();
            }
        }

        void UyariMesajKutu(string mesaj)
        {
            ClientScriptManager cs = Page.ClientScript;
            cs.RegisterStartupScript(this.GetType(), "Mesaj", "<script>alert('" + mesaj + "')</script>", false);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MisafirModulu/UyeOlAnaSayfa.aspx");
        }
    }
}