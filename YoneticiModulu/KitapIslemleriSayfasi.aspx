<%@ Page Title="" Language="C#" MasterPageFile="~/YoneticiModulu/Yonetici.Master" AutoEventWireup="true" CodeBehind="KitapIslemleriSayfasi.aspx.cs" Inherits="Kutuphane.YoneticiModulu.KitapIslemleriSayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }

        .auto-style7 {
            height: 26px;
        }

        .auto-style8 {
            font-size: large;
        }

        .auto-style9 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="erisilir" runat="server">
    <div id="anaDiv">
        <div id="baslikDiv" style="margin-top: 20px; height: auto+10px;">
            <h1><strong>&nbsp;Kitap İşlemleri</strong></h1>
        </div>
        <div>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style9">
                        <strong>
                            <asp:Label ID="Label1" runat="server" Style="margin-left: 10px;" Text="Kitap ID" CssClass="auto-style8"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="IDTextBox" runat="server" ReadOnly="True" Width="225px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <strong>
                            <asp:Label ID="Label2" Style="margin-left: 10px;" runat="server" Text="Kitap Adı" CssClass="auto-style8"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="adTxtBox" runat="server" Width="225px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                            <asp:Label ID="Label3" Style="margin-left: 10px;" runat="server" Text="Basım Yılı" CssClass="auto-style8"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="yilTextBox" runat="server" Width="223px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                            <asp:Label ID="Label4" Style="margin-left: 10px;" runat="server" Text="Kaçıncı Basım" CssClass="auto-style8"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="kacinciTextBox" Width="225px" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                            <asp:Label ID="Label6" Style="margin-left: 10px;" runat="server" Text="Yayın Evi" CssClass="auto-style8"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="yayinEviTextBox" Width="225px" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <strong>
                            <asp:Label ID="Label5" Style="margin-left: 10px;" runat="server" Text="Yazar ID" CssClass="auto-style8"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="235px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        <div style="margin-top: 20px;">

            <table class="auto-style6">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" Style="background-color: #6a2c70; color: #eeecda;" runat="server" Text="Kitap Ekle" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" Style="background-color: #6a2c70; color: #eeecda;" runat="server" Text="Kitap Sil" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" Style="background-color: #6a2c70; color: #eeecda;" runat="server" Text="Kitap Güncelle" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button4" Style="background-color: #6a2c70; color: #eeecda;" runat="server" Text="Kitapları Listele" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>

        </div>
        <div style="margin-top: 20px;">
            <h2>&nbsp; Kitaplar</h2>
        </div>
        <div>
            <asp:GridView ID="GridView1" Style="margin-left: 20px;" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField CommandName="Select" Text="Kitap Seç" />
                </Columns>
                <FooterStyle BackColor="#6a2c70" ForeColor="#eeecda" />
                <HeaderStyle BackColor="#6a2c70" Font-Bold="True" ForeColor="#eeecda" />
                <PagerStyle ForeColor="#eeecda" HorizontalAlign="Center" />
                <RowStyle BackColor="#b83b5e" ForeColor="#eeecda" />
                <SelectedRowStyle BackColor="#b83b5e" Font-Bold="True" ForeColor="#eeecda" />
                <SortedAscendingCellStyle BackColor="#b83b5e" />
                <SortedAscendingHeaderStyle BackColor="#b83b5e" />
                <SortedDescendingCellStyle BackColor="#b83b5e" />
                <SortedDescendingHeaderStyle BackColor="#b83b5e" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
