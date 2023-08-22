<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMessagesDetail.aspx.cs" Inherits="EndRecipeSite.AdminMessagesDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style21 {
        text-align: right;
    }
    .auto-style22 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style21"><strong>Mesaj Gönderen:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="425px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style21"><strong>Başlık:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="425px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style21"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="425px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style21"><strong>Mesaj İçerik:</strong></td>
        <td class="auto-style22"><strong>
            <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="425px"></asp:TextBox>
            </strong></td>
    </tr>
</table>
</asp:Content>
