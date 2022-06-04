<%@ Page Title="" Language="C#" MasterPageFile="~/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="LectViewLab.aspx.cs" Inherits="LabBookingSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table style="width:100%;">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">Search by</td>
            <td class="auto-style8">
                <asp:DropDownList ID="searchDropDown" runat="server">
                    <asp:ListItem>ID</asp:ListItem>
                    <asp:ListItem>Name</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style11">Search</td>
            <td class="auto-style12">
                <asp:TextBox ID="searchTxtBox" runat="server" Height="33px" Width="355px"></asp:TextBox>
                <asp:Button ID="searchBtn" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="searchBtn_Click1" />
                </td>
            <td class="auto-style12"></td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style5"></td>
        </tr>
    </table>
        <asp:Table ID="notiTable" runat="server">
            <asp:TableRow>
                <asp:TableCell>Sorry, we couldn't find any results</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>We offer other options and you might find one you like</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT * FROM [Lab]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="labID">
            <Columns>
                <asp:BoundField DataField="labID" HeaderText="ID" SortExpression="labID" ReadOnly="True" />
                <asp:BoundField DataField="labName" HeaderText="Name" SortExpression="labName" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
            </Columns>
        </asp:GridView>
    <br />
    <asp:Button runat="server" ID="bookBtn" CssClass="btn btn-primary btn-lg" Text="Make Booking" OnClick="bookBtn_Click"/>
    <div>
    </div></center>
</asp:Content>
