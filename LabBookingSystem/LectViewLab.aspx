<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LectViewLab.aspx.cs" Inherits="LabBookingSystem.ViewLab" %>

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
	        padding: 0 10px 0 10px;
            color: #fff;
            font-weight: 600;
        }

        .navbar-light{
            background-color: #04ACA4;
        }

        body{
            background-color: #EEF5DB;
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
                    <asp:HyperLink  id="h1" runat="server" Text="Home"></asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink  id="h2" runat="server" Text="My Bookings"></asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink  id="h3" runat="server" Text="Log Out"></asp:HyperLink>
                        
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="LabBookingData">
            <Columns>
                <asp:BoundField DataField="labName" HeaderText="Lab" SortExpression="labName" />
                <asp:BoundField DataField="labLocation" HeaderText="Location" SortExpression="labLocation" />
                <asp:BoundField DataField="labAvailability" HeaderText="Availability" SortExpression="labAvailability" />
                <asp:BoundField DataField="labPersonInCharge" HeaderText="Person In Charge" SortExpression="labPersonInCharge" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Make Booking" ShowHeader="True" Text="Book" />
            </Columns>
        </asp:GridView>
        </center>
        <div>
            <asp:SqlDataSource ID="LabBookingData" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT [labName], [labLocation], [labAvailability], [labPersonInCharge] FROM [Lab] ORDER BY [labLocation], [labName], [labAvailability]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
