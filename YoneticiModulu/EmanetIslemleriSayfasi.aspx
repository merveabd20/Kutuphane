<%@ Page Title="" Language="C#" MasterPageFile="~/YoneticiModulu/Yonetici.Master" AutoEventWireup="true" CodeBehind="EmanetIslemleriSayfasi.aspx.cs" Inherits="Kutuphane.YoneticiModulu.EmanetIslemleriSayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }

        .auto-style8 {
            width: 100%;
        }

        .auto-style10 {
            width: 181px;
            text-align: right;
        }

        .auto-style12 {
            margin-left: 20px;
        }

        .auto-style13 {
            text-align: right;
            width: 208px;
            height: 45px;
        }

        .auto-style14 {
            height: 45px;
        }
        .auto-style15 {
            margin-right: 20px;
            margin-left: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="erisilir" runat="server">
    <link href="Tasarim.css" rel="stylesheet" />
    <div id="anaDiv">
        <div id="baslikDiv" class="Margin">
            <h1>Emanet İşlemleri</h1>
        </div>
        <div id="emanetVer">
            <div class="Margin">
                <h1>Emanet Ver</h1>
            </div>
            <div class="Margin">

                <table class="auto-style8">
                    <tr>
                        <td class="auto-style10">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text="Üye ID" CssClass="label"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="list1" runat="server" Height="19px" Width="213px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <strong>
                                <asp:Label ID="Label2" runat="server" Text="Kitap ID" CssClass="label"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="list2" runat="server" Height="16px" Width="213px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="verButton" runat="server" Text="Emanet Ver" CssClass="button" OnClick="verButton_Click" />
            </div>
        </div>

        <div id="emanetAl">
            <div class="Margin">
                <h1>Emanet Al</h1>
            </div>
            <div class="Margin">
                <table class="auto-style8">
                                        <tr>
                        <td class="auto-style13"><strong>
                            <asp:Label ID="Label7" runat="server" CssClass="label" Text="İşlem ID"></asp:Label>
                        </strong></td>
                        <td class="auto-style14">
                            <asp:TextBox ID="IDTextBox" runat="server" CssClass="auto-style15" Width="202px" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>
                            <asp:Label ID="Label3" runat="server" CssClass="label" Text="Üye ID"></asp:Label>
                        </strong></td>
                        <td class="auto-style14">
                            <asp:DropDownList ID="list3" runat="server" CssClass="auto-style12" Height="20px" Width="213px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>
                            <asp:Label ID="Label4" runat="server" CssClass="label" Text="Kitap ID"></asp:Label>
                        </strong></td>
                        <td class="auto-style14">
                            <asp:DropDownList ID="list4" runat="server" CssClass="auto-style12" Height="16px" Width="213px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>
                            <asp:Label ID="Label5" runat="server" CssClass="label" Text="Getirme Durumu"></asp:Label>
                        </strong></td>
                        <td class="auto-style14">
                            <asp:TextBox ID="durumTextBox" runat="server" CssClass="texBox" ReadOnly="True" Width="203px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>
                            <asp:Label ID="Label6" runat="server" CssClass="label" Text="İşlem Ücreti"></asp:Label>
                        </strong></td>
                        <td class="auto-style14">
                            <asp:TextBox ID="ucretTextBox" runat="server" CssClass="texBox" ReadOnly="True" Width="203px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="hesaplaButton" runat="server" Text="İşlem Ücreti Hesapla" CssClass="button" OnClick="hesaplaButton_Click" />
                <asp:Button ID="alButton" runat="server" Text="Emanet Al" CssClass="button" OnClick="alButton_Click" />
                <asp:Button ID="listele" runat="server" Text="İşlemler Listesi" CssClass="button" OnClick="listele_Click" />
            </div>
            <div class="Margin">

            <asp:GridView ID="GridView1" Style="margin-left: 20px;" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField CommandName="Select" Text="İşlem Seç" />
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
            <div class="Margin">&nbsp</div>
        </div>
    </div>
</asp:Content>
