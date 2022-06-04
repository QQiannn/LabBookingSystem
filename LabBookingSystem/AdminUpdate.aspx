<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdate.aspx.cs" Inherits="LabBookingSystem.AdminUpdate" %>

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
        }
        .auto-style3 {
            height: 39px;
            background-color: #054A91;
        }
        .auto-style9 {
            width: 372px;
            height: 26px;
            background-color: #EEF5DB;
        }
        .auto-style14 {
            width: 372px;
            background-color: #EEF5DB;
        }
        .auto-style16 {
            width: 372px;
            height: 29px;
            background-color: #EEF5DB;
        }
        .auto-style17 {
            width: 300px;
            height: 29px;
            background-color: #EEF5DB;
        }
        .auto-style18 {
            width: 300px;
            background-color: #EEF5DB;
        }
        .auto-style19 {
            width: 300px;
            height: 26px;
            background-color: #EEF5DB;
        }
        .auto-style20 {
            width: 300px;
            background-color: #EEF5DB;
            height: 25px;
        }
        .auto-style21 {
            width: 372px;
            background-color: #EEF5DB;
            height: 25px;
        }

        .links{
            text-decoration: none;
            font-size: 0.9em;
            padding: 0 20px 0 20px;
            color: #fff;
            font-weight: 600;
        }

        .links:hover {
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
<body style="background-color:#EEF5DB;">
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
                        <asp:HyperLink  id="h1" runat="server" Text="Lab Information" CssClass="links" NavigateUrl="~/AdminInsertLab.aspx"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink  id="HyperLink1" runat="server" Text="View Bookings" CssClass="links" NavigateUrl="~/AdminBookings.aspx"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:Button ID="logOutBtn"  runat="server" Text="Log Out" CssClass="links btn btn-primary" OnClick="logOutBtn_Click" BorderStyle="None"></asp:Button>                       
                        
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
        </div>
        <table class="auto-style1" border="0" cellpadding="0" cellspacing="0">
            
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">Name:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">Id:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">Lab:</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="167px" Height="19px" DataSourceID="SqlDataSource1" DataTextField="labName" DataValueField="labName">
                    <asp:ListItem Selected = "True" Text = "" Value = ""></asp:ListItem>
                            <asp:ListItem>Operating System</asp:ListItem>
                            <asp:ListItem>Digital Media </asp:ListItem>
                            <asp:ListItem>Cloud Computing</asp:ListItem>
                            <asp:ListItem>Cisco </asp:ListItem>
                            <asp:ListItem>Web Intelligence</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT [labName] FROM [Lab]"></asp:SqlDataSource>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">Date:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style9">Time Start:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" autocomplete="off"></asp:TextBox>
                </td>
                <td class="auto-style19">
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">Time End:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox5" runat="server" autocomplete="off"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    </td>
                <td class="auto-style16">
                    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" CssClass="btn btn-primary" />
                </td>
                <td class="auto-style16">
                    <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" CssClass="btn btn-danger" />
                </td>
                <td class="auto-style17">
                    </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
