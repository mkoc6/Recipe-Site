<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAboutUs.aspx.cs" Inherits="EndRecipeSite.AdminAboutUs" %>
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
            text-align: center;
            background-color: #33CCFF;
        }

        .auto-style35 {
        text-align: left;
        margin-left: 40px;
    }
    .auto-style36 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style37 {
        text-align: center;
        margin-left: 40px;
    }
    .auto-style38 {
        font-size: medium;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                <td class="auto-style31" style="border-top-style: none; border-bottom-style: ridge; border-bottom-width: thin"><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
        <asp:Panel ID="Panel4" runat="server">
            <table class="auto-style18">
                <tr>
                    <td class="auto-style35"><em>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style38" Height="174px" TextMode="MultiLine" Width="675px"></asp:TextBox>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style37"><strong>
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style36" Height="32px" Text="GÜNCELLE" Width="341px" OnClick="Button5_Click" />
                        </strong></td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Panel>
</asp:Content>
