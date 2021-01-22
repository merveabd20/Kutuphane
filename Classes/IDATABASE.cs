using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kutuphane.Classes
{
    interface IDATABASE
    {
        void BaglantıAc();//veribağlantısını aç
        void VeriEkle(String tablo, String degerler);//veri ekle
        OracleDataReader VeriGetir(String komut);//veri getir
        void VeriSil(String kosul);//veriyi sil
        void VeriGuncelle(String tablo, String kosul);//update 

        void BaglantıKapa();//açılan bağlantıyı kapa

    }
}
