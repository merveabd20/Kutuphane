using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kutuphane.Classes;
using Oracle.ManagedDataAccess.Client;

namespace Kutuphane.YoneticiModulu
{
    public partial class EmanetIslemleriSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                OracleDatabase.GetInstance().BaglantıAc();
                //dropdownlistlere veri çekme    
                list1.DataTextField = "uyeID";
                list1.DataValueField = "uyeID";
                list1.DataSource = OracleDatabase.GetInstance().VeriGetir("Uye");
                list1.DataBind();

                list2.DataTextField = "kitapID";
                list2.DataValueField = "KitapID";
                list2.DataSource = OracleDatabase.GetInstance().VeriGetir("Kitap");
                list2.DataBind();

                list3.DataTextField = "uyeID";
                list3.DataValueField = "uyeID";
                list3.DataSource = OracleDatabase.GetInstance().VeriGetir("Uye");
                list3.DataBind();

                list4.DataTextField = "kitapID";
                list4.DataValueField = "kitapID";
                list4.DataSource = OracleDatabase.GetInstance().VeriGetir("Kitap");
                list4.DataBind();

                OracleDatabase.GetInstance().BaglantıKapa();
            }
        }

        protected void verButton_Click(object sender, EventArgs e)
        {
            //emanetver
            OracleDatabase.GetInstance().BaglantıAc();
            String tablo = "Islem(kitapID,uyeID,yoneticiID,islemTarihi)";
            String degerler = list2.SelectedValue+ "," + list1.SelectedValue + "," + Session["yonetici_id"] + ",TO_DATE('" +DateTime.Now.ToShortDateString() + "','DD/MM/YYYY')";
            OracleDatabase.GetInstance().VeriEkle(tablo, degerler);
            OracleDatabase.GetInstance().BaglantıKapa();

        }

        protected void hesaplaButton_Click(object sender, EventArgs e)
        {
            //işlem ücreti hesaplama
            if (IDTextBox.Text != "")
            {
                OracleDatabase.GetInstance().BaglantıAc();
                String deger = "islemTarihi";
                String komut = "Islem WHERE islemID=" + IDTextBox.Text;
                OracleDataReader tarih;
                tarih = OracleDatabase.GetInstance().VeriGetir(deger, komut);
                tarih.Read();
                DateTime islemTarihi =tarih.GetDateTime(0);
                DateTime teslimTarihi = DateTime.Now;
                TimeSpan fark = teslimTarihi - islemTarihi;
                if (fark.TotalDays > 10)
                {
                    //kitap alındıktan 10 gün sonra teslim edilmezse gecikilen gün kadar 1tl ücret uygulanır.
                    int f = Convert.ToInt32(fark.TotalDays) - 10;
                    int islem_ucreti = 1 * f;
                    durumTextBox.Text = "Gecikmeli Getirildi";
                    ucretTextBox.Text = islem_ucreti.ToString();
                }
                else
                {
                    durumTextBox.Text = "Zamanında Getirildi.";
                    ucretTextBox.Text = "0";
                }
                OracleDatabase.GetInstance().BaglantıKapa();
            }
            else
            {
                UyariMesajKutu("Bir işlem seçiniz'");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ucretTextBox.Text = "";
            durumTextBox.Text = "";
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            IDTextBox.Text = row.Cells[1].Text.ToString();
            list3.SelectedValue = row.Cells[2].Text.ToString();
            list4.SelectedValue = row.Cells[3].Text.ToString();
        }

        protected void alButton_Click(object sender, EventArgs e)
        {
            //emanet al
            if (IDTextBox.Text != "")
            {
                String sonuc = "";
                if (durumTextBox.Text == "Zamanında Getirildi.")
                {
                    sonuc = "hayır";
                }
                else
                {
                    sonuc = "evet";
                }
                OracleDatabase.GetInstance().BaglantıAc();
                String tablo = "Islem";
                String degerler = "gecikmeliMi='" + sonuc + "',islemUcreti=" + ucretTextBox.Text + ",teslimTarihi=TO_DATE('" + DateTime.Now.ToShortDateString() + "','DD,MM,YYYY'),getirdiMi='evet' WHERE islemID=" + IDTextBox.Text;
                OracleDatabase.GetInstance().VeriGuncelle(tablo, degerler);
                OracleDatabase.GetInstance().BaglantıKapa();
                UyariMesajKutu("İşlem Tamamlandı!");
                IDTextBox.Text = "";
                durumTextBox.Text = "";
                ucretTextBox.Text = "";

            }
            else
            {
                UyariMesajKutu("Bir işlem seçiniz'");
            }
        }

        void UyariMesajKutu(string mesaj)
        {
            ClientScriptManager cs = Page.ClientScript;
            cs.RegisterStartupScript(this.GetType(), "Mesaj", "<script>alert('" + mesaj + "')</script>", false);
        }

        protected void listele_Click(object sender, EventArgs e)
        {
            String deger = "islemID,uyeID,kitapID,islemTarihi,teslimTarihi,islemUcreti";
            OracleDatabase.GetInstance().BaglantıAc();
            OracleDataReader islem;
            islem = OracleDatabase.GetInstance().VeriGetir(deger,"Islem");
            if (islem != null)
            {
                GridView1.DataSource = islem;
                GridView1.DataBind();
            }
            OracleDatabase.GetInstance().BaglantıKapa();
        }
    }
}