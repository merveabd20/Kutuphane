<%@ Page Title="" Language="C#" MasterPageFile="~/YoneticiModulu/Yonetici.Master" AutoEventWireup="true" CodeBehind="UyeIslemleriSayfasi.aspx.cs" Inherits="Kutuphane.YoneticiModulu.UyeIslemleriSayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }

        .auto-style7 {
            font-size: large;
        }

        .auto-style8 {
            text-align: left;
        }

        .auto-style9 {
            font-weight: normal;
        }
        .auto-style10 {
            height: 491px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="erisilir" runat="server">
    <div id="anaDiv" class="auto-style10" style="height:auto;">
        <div id="baslikDiv" style="margin-top: 5px;">
            <h1>&nbsp; Üye İşlemleri</h1>
        </div>
        <div>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style8">
                        <strong>
                            <asp:Label ID="Label1" Style="margin-left: 10px;" runat="server" Text="Üye ID" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="IDTextBox" runat="server" Width="208px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                            <asp:Label ID="Label2" Style="margin-left: 10px;" runat="server" Text="Üye Adı" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="adTextBox" runat="server" Width="208px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                            <asp:Label ID="Label3" Style="margin-left: 10px;" runat="server" Text="Üye Soyadı" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="soyadTextBox" runat="server" Width="208px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                            <asp:Label ID="Label4" Style="margin-left: 10px;" runat="server" Text="Üye Maili" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="mailTextBox" runat="server" Width="208px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                            <asp:Label ID="Label5" Style="margin-left: 10px;" runat="server" Text="Üye Şifresi" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="sifreTextBox" runat="server" Width="208px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div style="margin-top: 20px;">
            <table class="auto-style6">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" Style="background-color: #6a2c70; color: #eeecda;" runat="server" Text="Üye Ekle" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" Style="background-color: #6a2c70; color: #eeecda;" runat="server" Text="Üye Sil" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" Style="background-color: #6a2c70; color: #eeecda;" runat="server" Text="Üye Güncelle" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button4" Style="background-color: #6a2c70; color: #eeecda;" runat="server" Text="Üyeleri Listele" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <div style="margin-top: 20px;">
                <h2>&nbsp; Üyeler <span class="auto-style9"><strong>Listesi</strong></span></h2>
            </div>
            <div>
                <asp:GridView ID="GridView1" Style="margin-left: 20px; margin-bottom:20px;" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <Columns>
                        <asp:ButtonField CommandName="Select" Text="Üye Seç" />
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
    </div>
</asp:Content>
