<%@ Page Title="" Language="C#" MasterPageFile="~/YoneticiModulu/Yonetici.Master" AutoEventWireup="true" CodeBehind="DuyuruIslemleriAnaSayfa.aspx.cs" Inherits="Kutuphane.YoneticiModulu.DuyuruIslemleriAnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            height: 55px;
            width: 250px;
            text-align: right;
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
                <td class="auto-style9">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Duyuru ID" CssClass="label"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8"><asp:TextBox ID="IdTexBox" runat="server" CssClass="TextBox" ReadOnly="True" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Duyuru Metni" CssClass="label"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8"><asp:TextBox ID="duyuruTextBox" runat="server" Height="15px" Width="210px" CssClass="TextBox"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table class="auto-style16">
            <tr>
                <td class="auto-style10">
            <asp:Button ID="EkleButton" runat="server" Text="Ekle" CssClass="button2" OnClick="Button1_Click" />
                </td>
                <td class="auto-style10">
            <asp:Button ID="silButton" runat="server" Text="Sil" CssClass="button2" OnClick="silButton_Click" />
                </td>
                <td class="auto-style10">
            <asp:Button ID="guncelleButton" runat="server" Text="Güncelle" CssClass="button2" OnClick="guncelleButton_Click" />
                </td>
                <td class="auto-style10">
            <asp:Button ID="listeleButton" runat="server" Text="Listele" CssClass="button2" OnClick="listeleButton_Click" />
                </td>
            </tr>
        </table>
    </div>
   </div>
    <div class="Margin">
        <div class="Margin" >
            <h1>Duyurular
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
