<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="EndRecipeSite.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style18 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style17">
        <strong style="border-bottom-style: groove">HAKKIMIZDA</strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="685px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("METIN") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:Image ID="Image1" runat="server" CssClass="auto-style18" Height="308px" ImageUrl="~/pictures/rr.png" Width="683px" />
</asp:Content>
