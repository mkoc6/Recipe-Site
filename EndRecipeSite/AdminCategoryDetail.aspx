<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCategoryDetail.aspx.cs" Inherits="EndRecipeSite.AdminCategoryDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style22 {
            text-align: right;
        }
        .auto-style23 {
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
            <td class="auto-style22"><strong>KATEGORI AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="179px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>ADET</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="176px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="297px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="44px" OnClick="Button1_Click" Text="Güncelle" Width="168px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
