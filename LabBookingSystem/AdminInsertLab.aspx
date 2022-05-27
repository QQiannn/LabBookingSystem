<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminInsertLab.aspx.cs" Inherits="LabBookingSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:90%; margin: 20px;">
            <tr>
                <td colspan="4"><center><strong>INSERT NEW LAB INFORMATION</strong></center></td>
            </tr>
            <tr>
                <td class="auto-style1">Lab Name</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="nameTxtBox" runat="server" CssClass="offset-sm-0" Width="339px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="nameReq" runat="server" ControlToValidate="nameTxtBox" ErrorMessage="Please fill in the lab name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Lab Location</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="locationTxtBox" runat="server" Width="336px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="locationReq" runat="server" ControlToValidate="locationTxtBox" ErrorMessage="Please fill in the location" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Person in charge</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="picTxtBox" runat="server" Width="334px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="picReq" runat="server" ControlToValidate="picTxtBox" ErrorMessage="Please fill in the person in charge's name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Staff contact</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="contactTxtBox" runat="server" Width="332px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="contactReq" runat="server" ControlToValidate="contactTxtBox" ErrorMessage="Please fill in the staff's contact" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="addBtn" runat="server" OnClick="addBtn_Click" Text="Add Lab" CssClass="btn btn-primary" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="successLbl" runat="server" ForeColor="#006600" Text="Data successfully added! "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        <br />

        <div>
            <asp:SqlDataSource ID="LabBookingData" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT [labName], [labLocation] FROM [Lab]"></asp:SqlDataSource>
        </div>
</asp:Content>
