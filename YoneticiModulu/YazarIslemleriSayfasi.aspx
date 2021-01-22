<%@ Page Title="" Language="C#" MasterPageFile="~/YoneticiModulu/Yonetici.Master" AutoEventWireup="true" CodeBehind="YazarIslemleriSayfasi.aspx.cs" Inherits="Kutuphane.YoneticiModulu.YazarIslemleriSayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 479px;
        }

        .auto-style7 {
            font-size: x-large;
        }

        .auto-style12 {
            width: 100%;
        }
        .auto-style14 {
            text-align: right;
            height: 40px;
        }
        .auto-style15 {
            height: 40px;
        }
        .auto-style16 {
            width: 100%;
            height: 44px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="erisilir" runat="server">
    <link href="Tasarim.css" rel="stylesheet" />
    <div class="Margin">
        <h1>Yazar İşlemleri</h1>
    </div>
   <div class="Margin">
           <div>
        <table class="auto-style12">
            <tr>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Yazar ID" CssClass="label"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15"><asp:TextBox ID="IdTexBox" runat="server" CssClass="TextBox" ReadOnly="True" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Yazar Ad" CssClass="label"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15"><asp:TextBox ID="adTextBox" runat="server" Height="15px" Width="210px" CssClass="TextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text="Yazar Soyad" CssClass="label"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15">
            <asp:TextBox ID="soyadTextBox" runat="server" Height="15px" Width="210px" CssClass="TextBox"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table class="auto-style16">
            <tr>
                <td>
            <asp:Button ID="EkleButton" runat="server" Text="Ekle" CssClass="button2" OnClick="Button1_Click" />
                </td>
                <td>
            <asp:Button ID="silButton" runat="server" Text="Sil" CssClass="button2" OnClick="silButton_Click" />
                </td>
                <td>
            <asp:Button ID="guncelleButton" runat="server" Text="Güncelle" CssClass="button2" OnClick="guncelleButton_Click" />
                </td>
                <td>
            <asp:Button ID="listeleButton" runat="server" Text="Listele" CssClass="button2" OnClick="listeleButton_Click" />
                </td>
            </tr>
        </table>
    </div>
   </div>
    <div class="Margin">
        <div class="Margin" >
            <h1>Yazarlar
        </h1>
        </div>
        <asp:GridView ID="GridView1" runat="server" Style="margin-left: 20px; margin-top: 20px;" BackColor="#6a2c70" BorderColor="#6a2c70" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:ButtonField CommandName="Select" Text="Seç" />
            </Columns>
            <FooterStyle BackColor="#6a2c70" ForeColor="#eeecda" />
            <HeaderStyle BackColor="#6a2c70" Font-Bold="True" ForeColor="#eeecda" />
            <PagerStyle ForeColor="#6a2c70" HorizontalAlign="Center" />
            <RowStyle BackColor="#b83b5e" ForeColor="#eeecda" />
            <SelectedRowStyle BackColor="#b83b5e" Font-Bold="True" ForeColor="#eeecda" />
            <SortedAscendingCellStyle BackColor="#b83b5e" />
            <SortedAscendingHeaderStyle BackColor="#b83b5e" />
            <SortedDescendingCellStyle BackColor="#b83b5e" />
            <SortedDescendingHeaderStyle BackColor="#b83b5e" />
        </asp:GridView>
    </div>
    <div class="Margin">&nbsp</div>

</asp:Content>
