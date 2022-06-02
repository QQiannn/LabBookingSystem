<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminDelete.aspx.cs" Inherits="LabBookingSystem.AdminDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 425px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div>
        <table>
            <tr>
                <td colspan="4">
                    <center><h3 class="auto-style6">Delete operation based on ID  </h3></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">ID</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" Width="168px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="delete" CssClass="auto-style7" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td><asp:Label ID="Label1" runat="server" CssClass="auto-style11"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
