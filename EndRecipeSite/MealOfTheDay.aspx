<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MealOfTheDay.aspx.cs" Inherits="EndRecipeSite.MealOfTheDay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            width: 100%;
        }
        .auto-style21 {
            text-align: center;
            width: 677px;
        }
        .auto-style22 {
            text-align: left;
            width: 677px;
            height: 42px;
        }
        .auto-style24 {
            text-align: left;
            width: 677px;
            margin-left: 40px;
        }
        .auto-style26 {
            text-align: left;
            width: 677px;
            height: 33px;
        }
        .auto-style27 {
            text-align: left;
            width: 677px;
            height: 25px;
        }
        .auto-style28 {
            text-align: left;
            width: 677px;
            margin-left: 40px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style20">
                <tr>
                    <td class="auto-style21"><strong>
                        <asp:Label ID="Label8" runat="server" BorderStyle="None" CssClass="auto-style16" Text='<%# Eval("YEMEKAD") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style22"><strong>MALZEMLER:<br /></strong> <asp:Label ID="Label9" runat="server" CssClass="auto-style12" Text='<%# Eval("YEMEKMALZEME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style26"><strong>TARİF:<br /></strong> <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text='<%# Eval("YEMEKTARIF") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24"><strong>PUAN:&nbsp; </strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text='<%# Eval("YEMEKPUAN") %>'></asp:Label>
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image2" runat="server" Height="269px" ImageUrl='<%# Eval("YEMEKRESIM") %>' Width="671px" />
                        &nbsp;EKLENME TARİH:&nbsp;
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style12" Text='<%# Eval("YEMEKTARIH") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>
