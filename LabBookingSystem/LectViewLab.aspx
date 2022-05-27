<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LectViewLab.aspx.cs" Inherits="LabBookingSystem.ViewLab" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <link href="lectStyle.css" rel="stylesheet" type="text/css" />

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
        <br />
        <center>
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
    </form>
</body>
</html>
