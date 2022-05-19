<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminInsertLab.aspx.cs" Inherits="LabBookingSystem.AdminInsertLab" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style type="text/css">
        *{
            font-family: Lato, Montserrat;
        }

        .nav-item{
	        font-size: 1.1em;
	        padding: 0 20px 0 20px;
            color: #fff;
            font-weight: 600;
        }

        .navbar-light{
            background-color: #054A91;
        }

        .auto-style1 {
            width: 349px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color:#fff;">Lab Booking System</a>
            <button class="navbar-toggler" type="button" data-coreui-toggle="collapse" data-coreui-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav ms-auto mt-2 mt-md-0">
                <li class="nav-item">
                    <asp:HyperLink  id="h1" runat="server" Text="Lab Information"></asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink  id="HyperLink1" runat="server" Text="View Bookings"></asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink  id="h3" runat="server" Text="Log Out"></asp:HyperLink>
                        
                </li>
              </ul>
            </div>
          </div>
        </nav>
        
        <center>
        <div>
        <table style="width:90%; margin: 20px;">
            <tr>
                <td colspan="2"><center>INSERT NEW LAB INFORMATION</center></td>
            </tr>
            <tr>
                <td class="auto-style1">Lab Name:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Lab Location:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Person in charge:</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        </center>
        <br />

        <div>
            <asp:SqlDataSource ID="LabBookingData" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT [labName], [labLocation] FROM [Lab]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

