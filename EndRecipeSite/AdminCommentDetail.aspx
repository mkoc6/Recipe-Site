<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCommentDetail.aspx.cs" Inherits="EndRecipeSite.AdminCommentDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            font-weight: bold;
        }
        .auto-style22 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style23 {
            font-size: large;
            text-align: right;
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
            <td class="auto-style23"><strong>Ad Soyad:</strong></td>
            <td><strong>
                <asp:TextBox ID="txtAd" runat="server" CssClass="auto-style21" Width="450px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Mail Adresi:</strong></td>
            <td><strong>
                <asp:TextBox ID="txtMail" runat="server" CssClass="auto-style21" Width="450px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>İçerik:</strong></td>
            <td><strong>
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="auto-style21" Height="90px" TextMode="MultiLine" Width="450px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Yemek:</strong></td>
            <td><strong>
                <asp:TextBox ID="txtYemek" runat="server" CssClass="auto-style21" Width="450px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style12"><strong></strong></td>
            <td><strong>
                <asp:Button ID="btnOnayla" runat="server" CssClass="auto-style22" Height="38px" Text="ONAYLA" Width="455px" OnClick="btnOnayla_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
