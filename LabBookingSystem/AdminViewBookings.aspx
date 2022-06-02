<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewBookings.aspx.cs" Inherits="LabBookingSystem.AdminViewLabn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        .auto-style7 {
            color: #FFFFFF;
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

        a{
            text-decoration: none;
            font-size: 0.9em;
            padding: 0 20px 0 20px;
            color: #fff;
            font-weight: 600;
        }

        a:hover{
            color: #f8e5a2;
            font-weight: 800;
            text-decoration: underline;
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
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light">
              <div class="container-fluid">
                <a class="navbar-brand" href="#" style="color:#fff;">Lab Booking System</a>
                <button class="navbar-toggler" type="button" data-coreui-toggle="collapse" data-coreui-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                  <ul class="navbar-nav ms-auto mt-2 mt-md-0">
                    <li class="nav-item">
                        <asp:HyperLink  id="h1" runat="server" Text="Lab Information" CssClass="links"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink id="HyperLink1" runat="server" Text="View Bookings" NavigateUrl="~/AdminViewLab.aspx" CssClass="links"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink  id="h3" runat="server" Text="Log Out" CssClass="links"></asp:HyperLink>
                        
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
        </div>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" DeleteCommand="DELETE FROM [Lab] WHERE [staffID] = @staffID" InsertCommand="INSERT INTO [Lab] ([staffID], [name], [lab], [date], [timeStart], [timeEnd]) VALUES (@staffID, @name, @lab, @date, @timeStart, @timeEnd)" SelectCommand="SELECT * FROM [Lab]" UpdateCommand="UPDATE [Lab] SET [name] = @name, [lab] = @lab, [date] = @date, [timeStart] = @timeStart, [timeEnd] = @timeEnd WHERE [staffID] = @staffID">
                        <DeleteParameters>
                            <asp:Parameter Name="staffID" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="staffID" />
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
                            <asp:Parameter Name="staffID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style21" colspan="2">
                    <h4>LAB INFORMATION</h4>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="staffID" DataSourceID="SqlDataSource1" Width="933px" >
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="staffID" HeaderText="staffID" ReadOnly="True" SortExpression="staffID" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="lab" HeaderText="lab" SortExpression="lab" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" DataFormatString = "{0:d}"   />
                            <asp:BoundField DataField="timeStart" HeaderText="timeStart" SortExpression="timeStart" />
                            <asp:BoundField DataField="timeEnd" HeaderText="timeEnd" SortExpression="timeEnd" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            </table>
    </form>
</body>
</html>
