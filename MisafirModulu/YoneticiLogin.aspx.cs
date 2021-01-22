using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kutuphane.Classes;
using Oracle.ManagedDataAccess.Client;

namespace Kutuphane.MisafirModulu
{
    public partial class YoneticiLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //yönetici girişi
            if (mailTextBox.Text != "" && passTextBox.Text != "")
            {
                String komut = "Yonetici WHERE yMail='" + mailTextBox.Text.ToString() + "' AND ySifre='" + passTextBox.Text.ToString() + "'";
                OracleDatabase.GetInstance().BaglantıAc();
                OracleDataReader oku;
                oku = OracleDatabase.GetInstance().VeriGetir(komut);
                oku.Read();
                if (oku.HasRows)
                {
                    Session.Add("yonetici_id", oku.GetString(0).ToString());
                    Response.Redirect("/YoneticiModulu/YoneticiAnaSayfa.aspx");
                }
                OracleDatabase.GetInstance().BaglantıKapa();
            }
        }
    }
}