<%@ Page Title="Hesap Ayarları" Language="C#" MasterPageFile="~/KullaniciModulu/Uye.Master" AutoEventWireup="true" CodeBehind="HesapAyarlariSayfasi.aspx.cs" Inherits="Kutuphane.KullaniciModulu.HesapAyarlariSayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Tasarim.css" rel="stylesheet" />
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="anaDiv" style="height: 1000px;">
        <div style="margin-top: 20px; margin-bottom: 20px;">&nbsp</div>
        <div id="hesapDiv" style="width: 500px; height: 700px; background: #b83b5e; margin-top: 20px; margin-left: 155px; margin-right: 150px;">
            <table class="tablo">
                <tr>
                    <td class="td">
                        <asp:Label ID="Label1" runat="server" Text="Ad" CssClass="label"></asp:Label>
                    </td>
                    <td class="td">
                        <asp:TextBox ID="adTextBox" runat="server" CssClass="texBox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="td">
                        <asp:Label ID="Label2" runat="server" Text="Soyad" CssClass="label"></asp:Label>
                    </td>
                    <td class="td">
                        <asp:TextBox ID="soyadTextBox" runat="server" CssClass="texBox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="td">
                        <asp:Label ID="Label3" runat="server" Text="Mail" CssClass="label"></asp:Label>
                    </td>
                    <td class="td">
                        <asp:TextBox ID="mailTextBox" runat="server" CssClass="texBox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="td">
                        <asp:Label ID="Label4" runat="server" Text="Şifre" CssClass="label"></asp:Label>
                    </td>
                    <td class="td">
                        <asp:TextBox ID="sifreTextBox" type="password" runat="server" CssClass="texBox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="td">
                        <asp:Label ID="Label5" runat="server" Text="Şifre (Tekrar)" CssClass="label"></asp:Label>
                    </td>
                    <td class="td">
                        <asp:TextBox ID="tekrarTextBox" type="password" runat="server" CssClass="texBox"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <div style="background: #b83b5e;">
                <asp:Button ID="Button1" runat="server" Text="Ayarları Kaydet" CssClass="button" OnClick="Button1_Click" />
            </div>
            <div style="background: #b83b5e;">
                <asp:Button ID="Button2" runat="server" Text="Hesabı Sil" CssClass="button" OnClick="Button2_Click" />
            </div>
        </div>
        <div style="margin-top: 20px; margin-bottom: 20px;">&nbsp</div>
    </div>
</asp:Content>
