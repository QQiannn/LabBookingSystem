<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminDelete.aspx.cs" Inherits="LabBookingSystem.AdminDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 425px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bookingID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="bookingID" HeaderText="ID" ReadOnly="True" SortExpression="bookingID" InsertVisible="False" />
                <asp:BoundField DataField="lecturerID" HeaderText="Staff ID" SortExpression="lecturerID" />
                <asp:BoundField DataField="name" HeaderText="Staff Name" SortExpression="name" />
                <asp:BoundField DataField="lab" HeaderText="Lab" SortExpression="lab" />
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="timeStart" HeaderText="Start Time" SortExpression="timeStart" />
                <asp:BoundField DataField="timeEnd" HeaderText="End Time" SortExpression="timeEnd" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT * FROM [Bookings]">
        </asp:SqlDataSource>
    </div></center>
</asp:Content>
