<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admincategory.aspx.cs" Inherits="EndRecipeSite.categoryAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            text-align: center;
            color: #0000FF;
            font-size: large;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            text-align: left;
            width: 244px;
        }
        .auto-style27 {
            text-align: left;
            width: 252px;
        }
        .auto-style28 {
            width: 41px;
            background-color: #33CCFF;
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
        .auto-style32 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style33 {
            font-size: large;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style21">
            <table class="auto-style18">
                <tr>
                    <td class="auto-style28"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style33" Height="29px" OnClick="Button1_Click" Text="+" Width="37px" />
                        </strong></td>
                    <td class="auto-style30"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="29px" OnClick="Button2_Click" Text="-" Width="37px" />
                        </strong></td>
                    <td class="auto-style31" style="border-top-style: none; border-bottom-style: ridge; border-bottom-width: thin"><strong>KATEGORİ LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="689px" CssClass="auto-style34">
            <ItemTemplate>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style24">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("KATEGORIAD") %>'></asp:Label>
                        </td>
                        <td class="auto-style27">
                            <a href ="Admincategory.aspx?KATEGORIID=<%#Eval("KATEGORIID") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/icons8_Delete_Key_64px.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style23">
                            <a href="AdminCategoryDetail.aspx?KATEGORIID=<%#Eval("KATEGORIID") %>">   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/icons8_installing_updates_64px_1.png" Width="30px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    
        <asp:Panel ID="Panel4" runat="server">
            <div class="auto-style21">
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style28"><strong>
                            <asp:Button ID="Button7" runat="server" CssClass="auto-style12" Height="29px" OnClick="Button7_Click" Text="+" Width="37px" />
                            </strong></td>
                        <td class="auto-style30"><strong>
                            <asp:Button ID="Button9" runat="server" CssClass="auto-style12" Height="29px" OnClick="Button9_Click" Text="-" Width="37px" />
                            </strong></td>
                        <td class="auto-style31" style="border-top-style: none; border-bottom-style: ridge; border-bottom-width: thin"><strong>KATEGORİ EKLEME</strong></td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style18">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD&nbsp;:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İCON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style32" Height="33px" Text="EKLE" Width="165px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
