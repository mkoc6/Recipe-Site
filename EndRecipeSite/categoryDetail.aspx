<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="categoryDetail.aspx.cs" Inherits="EndRecipeSite.category_Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style17 {
        width: 100%;
    }
    .auto-style19 {
        height: 26px;
        background-color: #00FFFF;
    }
    .auto-style20 {
        height: 27px;
    }
    .auto-style18 {
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style17">
            <tr>
                <td class="auto-style19"><strong><a href="MealDetail.aspx?YEMEKID=<%# Eval("YEMEKID") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Text='<%# Eval("YEMEKAD") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YEMEKMALZEME") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YEMEKTARIF") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Eklenme Tarihi:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YEMEKTARIH") %>'></asp:Label>
                        &nbsp;-&nbsp;<strong><em>Puan:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YEMEKPUAN") %>'></asp:Label>
                    </em></strong>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18" style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #000000">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
