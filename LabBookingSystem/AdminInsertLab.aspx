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
            font-family: Lato, Montserrat, Tahoma, Geneva, Verdana, sans-serif;
        }

        body{
            background-color: #EEF5DB;
            color: #000;
        }

        input, option, .dropDown{
            font-size: 0.9em;
            font-family: Lato, Montserrat, Tahoma, Geneva, Verdana, sans-serif;
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
            width: 267px;
        }

        .auto-style2 {
            width: 12px;
        }
        .auto-style3 {
            width: 267px;
            height: 37px;
        }
        .auto-style4 {
            width: 12px;
            height: 37px;
        }
        .auto-style5 {
            height: 37px;
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
        
        <div>
        <table style="width:90%; margin: 20px;">
            <tr>
                <td colspan="4"><center>INSERT NEW LAB INFORMATION</center></td>
            </tr>
            <tr>
                <td class="auto-style1">Lab Name</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="nameTxtBox" runat="server" CssClass="offset-sm-0" Width="339px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="nameReq" runat="server" ControlToValidate="nameTxtBox" ErrorMessage="Please fill in the lab name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Lab Location</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="locationTxtBox" runat="server" Width="336px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="locationReq" runat="server" ControlToValidate="locationTxtBox" ErrorMessage="Please fill in the location" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Person in charge</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="picTxtBox" runat="server" Width="334px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="picReq" runat="server" ControlToValidate="picTxtBox" ErrorMessage="Please fill in the person in charge's name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Staff contact</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="contactTxtBox" runat="server" Width="332px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="contactReq" runat="server" ControlToValidate="contactTxtBox" ErrorMessage="Please fill in the staff's contact" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="addBtn" runat="server" OnClick="addBtn_Click" Text="Add Lab" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="successLbl" runat="server" ForeColor="#006600" Text="Data successfully added! "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        <br />

        <div>
            <asp:SqlDataSource ID="LabBookingData" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT [labName], [labLocation] FROM [Lab]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

