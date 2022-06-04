<%@ Page Title="" Language="C#" MasterPageFile="~/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="LectViewBookings.aspx.cs" Inherits="LabBookingSystem.LectViewBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 34px;
            background-color: #0099FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True" DeleteCommand="DELETE FROM [Bookings] WHERE [bookingID] = @bookingID" InsertCommand="INSERT INTO [Bookings] ([lecturerID], [name], [lab], [date], [timeStart], [timeEnd]) VALUES (@lecturerID, @name, @lab, @date, @timeStart, @timeEnd)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Bookings] WHERE [lecturerID] = @uid" UpdateCommand="UPDATE [Bookings] SET [name] = @name, [lab] = @lab, [date] = @date, [timeStart] = @timeStart, [timeEnd] = @timeEnd WHERE [bookingID] = @bookingID">
                <SelectParameters>
                     <asp:SessionParameter Name="uid" SessionField="uid" Type="String" />
                </SelectParameters>        
                <DeleteParameters>
                    <asp:Parameter Name="bookingID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="lecturerID" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="lab" Type="String" />
                    <asp:Parameter Type="String" Name="date" />
                    <asp:Parameter Type="String" Name="timeStart" />
                    <asp:Parameter Type="String" Name="timeEnd" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="lab" Type="String" />
                    <asp:Parameter Type="String" Name="date" />
                    <asp:Parameter Type="String" Name="timeStart" />
                    <asp:Parameter Type="String" Name="timeEnd" />
                    <asp:Parameter Name="lecturerID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bookingID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="bookingID" HeaderText="No" ReadOnly="True" SortExpression="bookingID" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="lab" HeaderText="lab" SortExpression="lab" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="timeStart" HeaderText="timeStart" SortExpression="timeStart" />
                <asp:BoundField DataField="timeEnd" HeaderText="timeEnd" SortExpression="timeEnd" />
            </Columns>
            <EditRowStyle BackColor="#CC99FF" BorderColor="#CC99FF" BorderStyle="Dotted" BorderWidth="40px" Font-Bold="True" Font-Italic="True" />
        </asp:GridView>
        </center>
        <br />
        <br />
</asp:Content>
