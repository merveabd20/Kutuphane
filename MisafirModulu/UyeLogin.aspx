<%@ Page Title="" Language="C#" MasterPageFile="~/MisafirModulu/Login.Master" AutoEventWireup="true" CodeBehind="UyeLogin.aspx.cs" Inherits="Kutuphane.MisafirModulu.UyeLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            color: #FFFFFF;
            height: 45px;
            margin-top: 0px;
        }

        .auto-style9 {
            width: 100%;
        }

        .auto-style10 {
            text-align: center;
            width: 206px;
            height: 81px;
        }


        .auto-style13 {
            height: 83px;
        }

        .auto-style14 {
            text-align: center;
            width: 206px;
            height: 84px;
        }

        .auto-style15 {
            height: 84px;
        }

        .auto-style16 {
            height: 81px;
        }

        .auto-style17 {
            margin-left: 15px;
        }

        .auto-style19 {
            margin-left: 302px;
        }
        .auto-style20 {
            width: 444px;
            height: 474px;
            margin-left: 174px;
            margin-right: 155px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="erisilir" runat="server">
    <div>&nbsp</div>
    <div style="margin-top: 20px; background-color: #6a2c70;" class="auto-style20">
        <h1 class="auto-style8">Üye Girişi</h1>
        <table class="auto-style9">
            <tr>
                <td class="auto-style14">
                    <h3>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="E-posta: " ForeColor="#EEECDA"></asp:Label>
                    </h3>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="mailTextBox" runat="server" CssClass="auto-style17" Height="24px" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <h3>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Şifre: "></asp:Label>
                    </h3>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="passTextBox" type="password" runat="server" CssClass="auto-style17" Height="24px" Width="190px"></asp:TextBox>
                </td>
            </tr>
        </table>

        <table class="auto-style9">
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" BackColor="#F08A5D" CssClass="auto-style19" Text="Üye Girişi" Width="120px" Font-Bold="True" Font-Size="14pt" ForeColor="#EEECDA" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" BackColor="#F08A5D" CssClass="auto-style19" Text="Üye Ol" Width="120px" Font-Bold="True" Font-Size="14pt" ForeColor="#EEECDA" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
