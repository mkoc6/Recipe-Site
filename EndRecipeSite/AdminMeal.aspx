<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMeal.aspx.cs" Inherits="EndRecipeSite.AdminMeal" %>


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
        .auto-style33 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style32 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style36 {
            width: 148px;
        }
        .auto-style37 {
            width: 148px;
            height: 32px;
        }
        .auto-style38 {
            height: 32px;
        }
        .auto-style39 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style40 {
            width: 148px;
            height: 26px;
        }
        .auto-style41 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style21">
            <table class="auto-style18">
                <tr>
                    <td class="auto-style28"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style33" Height="29px"  Text="+" Width="37px" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style30"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="29px"  Text="-" Width="37px" OnClick="Button2_Click" />
                        </strong></td>
                    <td class="auto-style31" style="border-top-style: none; border-bottom-style: ridge; border-bottom-width: thin"><strong>YEMEK LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="689px">
            <ItemTemplate>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style24">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YEMEKAD") %>'></asp:Label>
                        </td>
                        <td class="auto-style27">
                            <a href="AdminMeal.aspx?YEMEKID=<%#Eval("YEMEKID") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/icons8_Delete_Key_64px.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style23">
                            <a href="AdminEditMeal.aspx?YEMEKID=<%#Eval("YEMEKID") %>">   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/icons8_installing_updates_64px_1.png" Width="30px" /></a> 
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
                            <asp:Button ID="Button7" runat="server" CssClass="auto-style12" Height="29px"  Text="+" Width="37px" OnClick="Button7_Click" />
                            </strong></td>
                        <td class="auto-style30"><strong>
                            <asp:Button ID="Button9" runat="server" CssClass="auto-style12" Height="29px"  Text="-" Width="37px" OnClick="Button9_Click" />
                            </strong></td>
                        <td class="auto-style31" style="border-top-style: none; border-bottom-style: ridge; border-bottom-width: thin"><strong>YEMEK EKLEME</strong></td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style18">
            <tr>
                <td class="auto-style36">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36">YEMEK AD&nbsp;:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="235px" TextMode="MultiLine" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style37">KATEGORİ:</td>
                <td class="auto-style38"><strong>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style39" Width="450px">
                    </asp:DropDownList>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style36">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style32" Height="33px" Text="EKLE" Width="449px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style40"></td>
                <td class="auto-style41"></td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
