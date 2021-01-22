<%@ Page Title="" Language="C#" MasterPageFile="~/MisafirModulu/Login.Master" AutoEventWireup="true" CodeBehind="YoneticiLogin.aspx.cs" Inherits="Kutuphane.MisafirModulu.YoneticiLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 540px;
            height: 472px;
            margin-left: 140px;
        }
        .auto-style11 {
            margin-left: 15px;
        }
        .auto-style15 {
            width: 233px;
            height: 65px;
        }
        .auto-style16 {
            height: 65px;
        }
        .auto-style18 {
            width: 100%;
            height: 57px;
        }
        .auto-style19 {
            margin-left: 321px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="erisilir" runat="server">
    <div>&nbsp</div>
    <div style="background-color: #6a2c70; margin-top:20px;" class="auto-style10">
        <h1 class="auto-style8">Yönetici Girişi </h1>

        <table class="auto-style9">
            <tr>
                <td class="auto-style15">
                    <h3 class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="E-posta: " ForeColor="#EEECDA"></asp:Label>
                    </h3>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="mailTextBox" runat="server" CssClass="auto-style11" Height="26px" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <h3 class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Şifre: " ForeColor="#EEECDA"></asp:Label>
                    </h3>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="passTextBox" type="password" runat="server" CssClass="auto-style11" Height="26px" Width="190px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style18">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Giriş Yap" BackColor="#F08A5D" Font-Bold="True" Font-Size="14pt" ForeColor="#EEECDA" CssClass="auto-style19" Height="38px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
