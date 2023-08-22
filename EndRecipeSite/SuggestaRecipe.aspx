<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="SuggestaRecipe.aspx.cs" Inherits="EndRecipeSite.SuggestaRecipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            height: 26px;
        }
        .auto-style19 {
            height: 28px;
        }
        .auto-style20 {
            height: 28px;
            text-align: right;
        }
        .auto-style21 {
            height: 26px;
            text-align: right;
        }
        .auto-style22 {
            text-align: right;
        }
        .auto-style23 {
            height: 28px;
            color: #551A8B;
            font-size: x-large;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
        <tr>
            <td class="auto-style18">
                <table class="auto-style17">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22"><strong>Tarif Ad:</strong></td>
                        <td>
                            <asp:TextBox ID="TxtTarifAd" runat="server" Height="35px" Width="430px" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21"><strong>Malzemler:</strong></td>
                        <td class="auto-style18">
                            <asp:TextBox ID="TxtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="430px" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20"><strong>Yapılış:</strong></td>
                        <td class="auto-style23">
                            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="430px" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20"><strong>Resim:</strong></td>
                        <td class="auto-style23">
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="430px" CssClass="tb5" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20"><strong>Tarif Sahibi</strong></td>
                        <td class="auto-style23">
                            <asp:TextBox ID="TxtOneren" runat="server" Height="35px" Width="430px" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20"><strong>Mail Adresi</strong></td>
                        <td class="auto-style23">
                            <asp:TextBox ID="TxtMail" runat="server" Height="35px" TextMode="Email" Width="430px" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style23"><strong>
                            <asp:Button ID="BtnTarifOner" runat="server" BackColor="Aqua" CssClass="tb5" Font-Bold="True" Font-Size="Large" Height="57px" Text="Tarif Öner" Width="437px" />
                            </strong></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
