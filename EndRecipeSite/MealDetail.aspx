<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MealDetail.aspx.cs" Inherits="EndRecipeSite.MealDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            font-size: small;
        }
        .auto-style19 {
            height: 27px;
        }
        .auto-style21 {
            font-size: x-large;
            background-color: #66FFFF;
        }
    .auto-style23 {
        font-weight: bold;
        font-size: large;
        text-align: right;
    }
        .auto-style24 {
            height: 55px;
        }
        .auto-style25 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            background-color: #00FFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <em><strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Text="Label" BorderStyle="Outset"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style17">
                <tr>
                    <td><em><strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YORUMAD") %>'></asp:Label>
                        </strong></em></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin"><em><strong>
                        
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YORUMICERIK") %>'></asp:Label>
                        <br />
                        -<asp:Label ID="Label6" runat="server" CssClass="auto-style18" Text='<%# Eval("YORUMTARIH") %>'></asp:Label>
                        </strong></em></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <br />
        <div class="auto-style21">YORUM Yapma Paneli&nbsp;:</div>
        <table class="auto-style17">
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
    </strong>
            <tr>
                <td class="auto-style23">Ad Soyad:</td>
                <strong>
                <td>
                    <asp:TextBox ID="TXT" runat="server" Width="351px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Mail:</td>
                <td>
    <em><strong>
                    <asp:TextBox ID="TextBox2" runat="server" Width="349px" CssClass="tb5"></asp:TextBox>
    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Yorumunuz:</td>
                <td>
    <em>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="347px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                    </em>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="Yorum Yap" Width="354px" CssClass="auto-style25" Height="51px" OnClick="Button1_Click" />
                    </strong>
                </td>
            </tr>
    </table>
    </strong></em>
</asp:Content>
