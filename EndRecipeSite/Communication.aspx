<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Communication.aspx.cs" Inherits="EndRecipeSite.Communication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 100%;
    }
    .auto-style19 {
        height: 29px;
    }
    .auto-style20 {
        height: 29px;
        font-size: large;
        text-align: right;
    }
    .auto-style21 {
        font-size: large;
        text-align: right;
    }
        .auto-style23 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            background-color: #00FFFF;
        }
        .auto-style24 {
            height: 29px;
            color: #551A8B;
            font-size: x-large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
    <tr>
        <td class="auto-style5" colspan="2">MESAJ PANELİ</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style21">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="txtAd" runat="server" Width="349px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style20">Mail Adresiniz:</td>
        <td class="auto-style24">
            <asp:TextBox ID="txtMail" runat="server" Width="347px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">Konu:</td>
        <td>
            <asp:TextBox ID="txtKonu" runat="server" Width="349px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">Mesaj:</td>
        <td>
            <asp:TextBox ID="TxtMesa" runat="server" Height="100px" TextMode="MultiLine" Width="350px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="44px" Text="Gönder" Width="351px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
