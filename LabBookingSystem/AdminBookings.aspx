<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminBookings.aspx.cs" Inherits="LabBookingSystem.AdminBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <link href="adminStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 0px;
        }
        .auto-style3 {
            height: 39px;
            background-color: #054A91;
        }
        .auto-style17 {
            width: 300px;
            height: 29px;
            background-color: #EEF5DB;
        }
        .auto-style18 {
            height: 29px;
            background-color: #EEF5DB;
        }
        .auto-style19 {
            width: 300px;
            height: 28px;
            background-color: #EEF5DB;
        }
        .auto-style20 {
            width: 372px;
            height: 28px;
            background-color: #EEF5DB;
        }
        .auto-style21 {
            height: 29px;
            background-color: #EEF5DB;
            text-align: center;
        }

        
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script>
        $(function () {
            $("#TextBox3").datepicker(
                {
                    dateFormat: 'dd-MM-yy',
                    changeMonth: true,
                    changeYear: true
                });
        }); 
    </script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css"/>
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
    <script>
        $(function () {
            $("#TextBox4").timepicker(
                {
                    timeFormat: 'h:mm p',
                    interval: 60,
                    minTime: '8:00am',
                    maxTime: '6:00pm',
                    defaultTime: '0',
                    startTime: '8:00',
                    dynamic: false,
                    dropdown: true,
                    scrollbar: true
                });
        });
    </script>
    <script>
        $(function () {
            $("#TextBox5").timepicker(
                {
                    timeFormat: 'h:mm p',
                    interval: 60,
                    minTime: '8:00am',
                    maxTime: '6:00pm',
                    defaultTime: '0',
                    startTime: '8:00',
                    dynamic: false,
                    dropdown: true,
                    scrollbar: true
                });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table class="auto-style1" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style21" colspan="2">
                    <h5>&nbsp;</h5>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18" colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" DeleteCommand="DELETE FROM [Bookings] WHERE [lecturerID] = @lecturerID" InsertCommand="INSERT INTO [Bookings] ([lecturerID], [name], [lab], [date], [timeStart], [timeEnd]) VALUES (@lecturerID, @name, @lab, @date, @timeStart, @timeEnd)" SelectCommand="SELECT * FROM [Bookings]" UpdateCommand="UPDATE [Bookings] SET [name] = @name, [lab] = @lab, [date] = @date, [timeStart] = @timeStart, [timeEnd] = @timeEnd WHERE [lecturerID] = @lecturerID">
                        <DeleteParameters>
                            <asp:Parameter Name="lecturerID" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="lecturerID" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="lab" Type="String" />
                            <asp:Parameter Name="date" Type="String"/>
                            <asp:Parameter Name="timeStart" Type="String"/>
                            <asp:Parameter Name="timeEnd" Type="String"/>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="lab" Type="String" />
                            <asp:Parameter Type="String" Name="date" />
                            <asp:Parameter Type="String" Name="timeStart" />
                            <asp:Parameter Type="String" Name="timeEnd" />
                            <asp:Parameter Name="lecturerID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style21" colspan="2">
                    <h4>BOOKINGS INFORMATION</h4>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bookingID" DataSourceID="SqlDataSource1" Width="933px" >
                        <Columns>
                            <asp:BoundField DataField="bookingID" HeaderText="bookingID" SortExpression="bookingID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="lecturerID" HeaderText="lecturerID" SortExpression="lecturerID" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="lab" HeaderText="lab" SortExpression="lab" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="timeStart" HeaderText="timeStart" SortExpression="timeStart" />
                            <asp:BoundField DataField="timeEnd" HeaderText="timeEnd" SortExpression="timeEnd" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="editBtn" runat="server" Text="Edit" CssClass="btn btn-primary" OnClick="editBtn_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            </table>
        </center>
</asp:Content>
