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
                    <asp:ListItem>Name</asp:ListItem>
                    <asp:ListItem>Location</asp:ListItem>
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
                <asp:Button ID="searchBtn" runat="server" Text="Search" CssClass="btn, btn-primary" OnClick="searchBtn_Click1" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT [labName], [labLocation], [labPersonInCharge], [labContact] FROM [Lab]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="labName" HeaderText="Name" SortExpression="labName" />
                <asp:BoundField DataField="labLocation" HeaderText="Location" SortExpression="labLocation" />
                <asp:BoundField DataField="labPersonInCharge" HeaderText="Staff" SortExpression="labPersonInCharge" />
                <asp:BoundField DataField="labContact" HeaderText="Contact" SortExpression="labContact" />
            </Columns>
        </asp:GridView>
    <br />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
        <Columns>
                <asp:BoundField DataField="labName" HeaderText="Name" 
                SortExpression="labName" ReadOnly="True" >
                <ControlStyle BorderStyle="Solid" />
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="labLocation" HeaderText="Location" 
                SortExpression="labLocation" >
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="labPersonInCharge" HeaderText="Staff" 
                SortExpression="labPersonInCharge" >
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="labContact" HeaderText="Contact" 
                SortExpression="labContact" >
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
        </Columns>
        </asp:GridView>
    </div></center>
</asp:Content>
