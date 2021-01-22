<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciModulu/Uye.Master" AutoEventWireup="true" CodeBehind="AlinanKitaplarAnaSayfa.aspx.cs" Inherits="Kutuphane.KullaniciModulu.AlinanKitaplarAnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="Margin">
            &nbsp
            <asp:Label ID="yazLabel" runat="server" CssClass="label"></asp:Label>
        </div>
        <div class="Margin">

            <asp:GridView ID="GridView1" runat="server" CssClass="Margin" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
        <div class="Margin">&nbsp</div>
    </div>
</asp:Content>
