<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Kutuphane.MisafirModulu.Hakkimizda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 40px;
            font-weight: normal;
            text-align: center;
            width: 800px;
        }
        .auto-style3 {
            text-decoration: none;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div id="baslikDiv" style="background-color: #6a2c70; text-align: center; width: 800px; height: 86px; margin-left: 300px; margin-right: 50px; color: #eeecda; font-size: 70px;">
            Kütüphane
        </div>

                          <div id="menüDiv" style="width: 800px; margin-left: 300px; margin-right: 50px; margin-top: 20px;">
            <table class="auto-style2">
                <tr>
                    <td aria-checked="undefined" class="auto-style5" style="background-color: #b83b5e;">
                        <h3>
                        <a href="MisafirAnaSayfasi.aspx" class="auto-style3"><span class="auto-style4">Ana Sayfa</span></a></h3>
                    </td>
                    <td aria-checked="undefined" class="auto-style5" style="background-color: #b83b5e;">
                        <h3>
                        <a href="Hakkimizda.aspx" class="auto-style3"><span class="auto-style4">Hakkımızda</span></a></h3>
                    </td>
                    <td aria-checked="undefined" class="auto-style5" style="background-color: #b83b5e;">
                        <h3>
                        <a href="UyeLogin.aspx" class="auto-style3"><span class="auto-style4">Üye Girişi</span></a></h3>
                    </td>
                    <td aria-checked="undefined" class="auto-style5" style="background-color: #b83b5e;">
                        <h3>
                        <a href="YoneticiLogin.aspx" class="auto-style3"><span class="auto-style4">Yönetici Girişi</span></a></h3>
                    </td>
                </tr>
            </table>
        </div>

        <div id="anaDiv" style="margin-left: 300px; margin-right: 50px; margin-top: 20px; width:800px; height:500px; color: #eeecda; font-size:25px; background-color: #f08a5d;"  >
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Veritabanı Yönetim Sistemleri dersi için bu otomasyon hazırlanmıştır.
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2020 - Güz Dönemi
        </div>
    </form>
</body>
</html>
