<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminRecipesDetail.aspx.cs" Inherits="EndRecipeSite.AdminRecipesDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style23 {
            font-weight: bold;
            font-size: large;
            text-align: right;
            width: 242px;
        }
        .auto-style24 {
            width: 242px;
            text-align: right;
        }
        .auto-style26 {
            font-size: x-large;
            text-align: center;
            color: #0000FF;
            background-color: #33CCFF;
            width: 545px;
            height: 38px;
        }
        .auto-style27 {
            width: 545px;
        }
        .auto-style29 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style30 {
            font-size: x-large;
            text-align: center;
            color: #0000FF;
            background-color: #33CCFF;
            width: 242px;
            height: 38px;
        }
        .auto-style31 {
            height: 26px;
            width: 242px;
            text-align: right;
        }
        .auto-style32 {
            width: 545px;
            height: 26px;
        }
        .auto-style33 {
            height: 48px;
            width: 242px;
            text-align: right;
        }
        .auto-style34 {
            width: 545px;
            height: 9px;
        }
        .auto-style35 {
            margin-top: 0px;
        }
        .auto-style36 {
            font-weight: bold;
            font-size: large;
            text-align: right;
            width: 242px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <em><strong>
    <table class="auto-style17">
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style26"></td>
        </tr>
        </strong>
        <tr>
            <td class="auto-style23">Tarif Ad:</td>
            <strong>
            <td class="auto-style27">
                <asp:TextBox ID="TXT" runat="server" Width="450px" CssClass="auto-style29"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">Tarif <em><strong>Malzemeler</strong></em>:</td>
            <td class="auto-style32"><em><strong>
                <asp:TextBox ID="TextBox2" runat="server" Width="450px" CssClass="auto-style29"></asp:TextBox>
                </strong></em></td>
        </tr>
        <tr>
            <td class="auto-style23">Yapılış:</td>
            <td class="auto-style27"><em>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style29" Width="450px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>Tarif Resim: </strong></td>
            <td class="auto-style34">
    <em>
            <strong>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style35" Width="456px" Height="34px" />
    </strong></em>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style31"><strong>Tarif Resim:</strong></td>
            <td class="auto-style32"><em><strong>
                <asp:TextBox ID="TextBox4" runat="server" Width="450px" CssClass="auto-style29"></asp:TextBox>
                </strong></em></td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Öneren Mail:</strong></td>
            <td class="auto-style27"><em><strong>
                <asp:TextBox ID="TextBox5" runat="server" Width="450px" CssClass="auto-style29"></asp:TextBox>
                </strong></em></td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Kategori:</strong></td>
            <td class="auto-style27">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="452px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style27">
    <em>
            <strong>
                <asp:Button ID="Button2" runat="server" Text="Onayla" Width="458px" OnClick="Button2_Click" />
    </strong></em>
            </td>
        </tr>
    </table>
    </strong></em>
</asp:Content>
