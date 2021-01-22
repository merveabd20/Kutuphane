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
    public partial class Misafir : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //duyuru listele
            if (Page.IsPostBack == false)
            {
                OracleDatabase.GetInstance().BaglantıAc();
                if (OracleDatabase.GetInstance().VeriGetir("Duyuru") != null)
                {
                    list0.DataSource = OracleDatabase.GetInstance().VeriGetir("Duyuru");
                    list0.DataBind();
                }
                OracleDatabase.GetInstance().BaglantıKapa();
            }
        }

        protected void listeleButton_Click(object sender, EventArgs e)
        {
            //kitap listele
            yazLabel.Text = "";
            OracleDatabase.GetInstance().BaglantıAc();
            OracleDataReader oku;
            oku = OracleDatabase.GetInstance().VeriGetir("Kitap");
            if (oku.HasRows)
            {
                list.DataSource = oku;
                list.DataBind();
            }
            OracleDatabase.GetInstance().BaglantıKapa();
        }

        protected void araButton_Click(object sender, EventArgs e)
        {
            //kitap ara
            if (aramaTextBox.Text != "")
            {
                string deger = "kitapAdi";
                String komut = "Kitap WHERE kitapAdi LIKE '%" + aramaTextBox.Text.ToString() + "%'";
                OracleDatabase.GetInstance().BaglantıAc();
                OracleDataReader oku;
                oku = OracleDatabase.GetInstance().VeriGetir(deger, komut);
                if (oku.HasRows)
                {
                    yazLabel.Text = "";
                    list.DataSource = oku;
                    list.DataBind();
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