<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminRecipes.aspx.cs" Inherits="EndRecipeSite.AdminRecipes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style21 {
            text-align: center;
            color: #0000FF;
            font-size: large;
           
        }

        .auto-style34 {
            width: 101%;
            height: 38px;
        }

        .auto-style28 {
            width: 41px;
            background-color: #33CCFF;
        }

        .auto-style33 {
            font-size: large;
            margin-left: 0px;
        }

        .auto-style30 {
            width: 34px;
            text-align: left;
            background-color: #33CCFF;
        }

        .auto-style31 {
            text-align: left;
            background-color: #33CCFF;
        }

        .auto-style24 {
            text-align: left;
            width: 376px;
        }

        .auto-style23 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <div class="auto-style21">
        <table class="auto-style34">
            <tr>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style33" Height="29px" Text="+" Width="37px" OnClick="Button1_Click"   />
                    </strong></td>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="29px" Text="-" Width="37px" OnClick="Button2_Click"   />
                    </strong></td>
                <td class="auto-style31" style="border-top-style: none; border-bottom-style: ridge; border-bottom-width: thin"><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style34" Width="689px">
                <ItemTemplate>
                    <table class="auto-style18">
                        <tr>
                            <td class="auto-style24">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("TARIFAD") %>'></asp:Label>
                            </td>
                            <td class="auto-style23">
                           <a href="AdminRecipesDetail.aspx?TARIFID=<%#Eval("TARIFID") %>">    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/food_64px.png" Width="44px" />
                        </a>       </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:Panel ID="Panel3" runat="server">
                <div class="auto-style21">
                    <table class="auto-style34">
                        <tr>
                            <td class="auto-style28"><strong>
                                <asp:Button ID="Button3" runat="server" CssClass="auto-style33" Height="29px" Text="+" Width="37px" OnClick="Button3_Click" />
                                </strong></td>
                            <td class="auto-style30"><strong>
                                <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Height="29px" Text="-" Width="37px" OnClick="Button4_Click" />
                                </strong></td>
                            <td class="auto-style31" style="border-top-style: none; border-bottom-style: ridge; border-bottom-width: thin"><strong>ONAYLI TARİF LİSTESİ</strong></td>
                        </tr>
                    </table>
                    <asp:Panel ID="Panel4" runat="server">
                        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style34" Width="689px">
                            <ItemTemplate>
                                <table class="auto-style18">
                                    <tr>
                                        <td class="auto-style24">
                                            <asp:Label ID="Label2" runat="server" CssClass="auto-style12" Text='<%# Eval("TARIFAD") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style23"><a href='AdminRecipesDetail.aspx?TARIFID=<%#Eval("TARIFID") %>'>
                                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/iconlar/food_64px.png" Width="44px" />
                                            </a></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
                </div>
            </asp:Panel>
        </asp:Panel>
    </div>
</asp:Panel>
</asp:Content>
