<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEditMeal.aspx.cs" Inherits="EndRecipeSite.AdminEditMeal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            height: 43px;
        }
        .auto-style22 {
            font-size: x-large;
        }
        .auto-style23 {
            height: 43px;
            text-align: center;
        }
        .auto-style24 {
            text-align: center;
        }
    .auto-style25 {
        font-size: x-large;
        background-color: #00FFFF;
    }
    .auto-style27 {
        width: 515px;
    }
    .auto-style28 {
        height: 43px;
        width: 515px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>YEMEK AD:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox1" runat="server" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>MALZEMELER</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>TARİF:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>KATEGORİ:</strong></td>
            <td class="auto-style28"><strong>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style22" Height="50px" Width="450px">
                </asp:DropDownList>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>YEMEK RESİM:</strong></td>
            <td class="auto-style28">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="453px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style28"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Height="37px" Text="YEMEK GÜNCELLE" Width="453px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style27">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style25" OnClick="Button2_Click" Text="GÜNÜN YEMEĞİNİ SEÇ" Width="453px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
