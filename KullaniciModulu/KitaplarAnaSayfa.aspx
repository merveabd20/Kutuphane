<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciModulu/Uye.Master" AutoEventWireup="true" CodeBehind="KitaplarAnaSayfa.aspx.cs" Inherits="Kutuphane.KullaniciModulu.KitaplarAnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 116px;
        }

        .auto-style3 {
            height: 50px;
        }

        .auto-style4 {
            margin-left: 40px;
        }

        .auto-style6 {
            width: 200px;
            height: 30px;
            font-size: 15px;
            font-weight: bold;
            text-align: center;
            color: #eeecda;
            background-color: #6a2c70;
            margin-top: 20px;
            margin-left: 602px;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Margin">
        <div class="Margin">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="aramaTextBox" runat="server" CssClass="auto-style4" Height="16px" Width="666px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Size="11pt" Text="Kitap Ara" Width="112px" OnClick="Button1_Click" />
                    </td>
                </tr>

            </table>
        </div>
        <div class="Margin">
            <asp:Label ID="yazLabel" runat="server"   CssClass="label"></asp:Label>
        </div>
        <div class="Margin">
            <asp:GridView ID="GridView1" runat="server" CssClass="Margin" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField CommandName="Select" Text="Beğen" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#b83b5e" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#b83b5e" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#b83b5e" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>
    </div>
    <div>&nbsp</div>
</asp:Content>
