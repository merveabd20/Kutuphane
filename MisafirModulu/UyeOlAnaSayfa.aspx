<%@ Page Title="" Language="C#" MasterPageFile="~/MisafirModulu/Login.Master" AutoEventWireup="true" CodeBehind="UyeOlAnaSayfa.aspx.cs" Inherits="Kutuphane.MisafirModulu.UyeOlAnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style10 {
            height: 55px;
        }
        .auto-style12 {
            margin-left: 50px;
        }
        .auto-style13 {
            height: 75px;
            width: 333px;
        }
        .auto-style14 {
            height: 75px;
        }
        .auto-style15 {
            height: 75px;
            width: 377px;
            text-align: right;
        }
        .auto-style16 {
            margin-left: 306px;
        }
        .auto-style17 {
            font-size: xx-large;
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style18 {
            font-size: xx-large;
        }
        .auto-style19 {
            width: 500px;
            height: 500px;
            margin-left: 140px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="erisilir" runat="server">
    <div style="margin-left:20px; margin-right:20px;">
        <div>&nbsp</div>
        <div style="margin-top:20px;" class="auto-style17">
            <h1 class="auto-style18">Üye Ol</h1>
        </div>
        <div style="margin-top:20px; background-color: #6a2c70; " class="auto-style19">

            <table class="auto-style8">
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server" Text="Ad" Font-Bold="True" Font-Size="17pt" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="adTextBox" runat="server" CssClass="auto-style12" Width="171px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label2" runat="server" Text="Soyad" Font-Bold="True" Font-Size="17pt" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="soyadTextBox" runat="server" CssClass="auto-style12" Width="171px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label3" runat="server" Text="Mail" Font-Bold="True" Font-Size="17pt" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="mailTextBox" runat="server" CssClass="auto-style12" Width="171px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label4" runat="server" Text="Şifre" Font-Bold="True" Font-Size="17pt" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="sifreTextBox" type="password" runat="server" CssClass="auto-style12" Width="171px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label5" runat="server"  Text="Şifre(Tekrar)" Font-Bold="True" Font-Size="17pt" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="tekrarTextBox" runat="server" type="password" CssClass="auto-style12" Width="171px"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <asp:Button ID="Button1" runat="server" Text="Kayıt Ol"  style="margin-top:20px;" BackColor="#f08a5d" Font-Bold="True" CssClass="auto-style16" Font-Size="15pt" ForeColor="White" Width="177px" OnClick="Button1_Click"/>

        </div>
        <div>&nbsp</div>
    </div>
</asp:Content>
