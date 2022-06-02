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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Lab;Integrated Security=True" DeleteCommand="DELETE FROM [LabInfo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [LabInfo] ([Id], [name], [lab], [date], [timeStart], [timeEnd]) VALUES (@Id, @name, @lab, @date, @timeStart, @timeEnd)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [LabInfo]" UpdateCommand="UPDATE [LabInfo] SET [name] = @name, [lab] = @lab, [date] = @date, [timeStart] = @timeStart, [timeEnd] = @timeEnd WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="lab" Type="String" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter DbType="Time" Name="timeStart" />
            <asp:Parameter DbType="Time" Name="timeEnd" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="lab" Type="String" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter DbType="Time" Name="timeStart" />
            <asp:Parameter DbType="Time" Name="timeEnd" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="lab" HeaderText="lab" SortExpression="lab" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="timeStart" HeaderText="timeStart" SortExpression="timeStart" />
            <asp:BoundField DataField="timeEnd" HeaderText="timeEnd" SortExpression="timeEnd" />
        </Columns>
        <EditRowStyle BackColor="#CC99FF" BorderColor="#CC99FF" BorderStyle="Dotted" BorderWidth="40px" Font-Bold="True" Font-Italic="True" />
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
</asp:Content>
