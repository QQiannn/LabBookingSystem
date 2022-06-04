<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LabBookingSystem.HomePage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style>
        * {
            font-family: Lato, Montserrat, Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #EEF5DB;
            color: #000;
        }

        .header{
            width: 100%;
            background: #0d2571;
            font-size: 2.0em;
            color: #ffffff;
        }

        .btn-primary{
            background: #054A91;
        }

        .btn-secondary{
            background: #04ACA4;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center><div class="header">
            Lab Booking System
        </div>
        <br />
        <h2>Log in</h2>
        <h3>I am ...</h3>
        <br />
        <table>
            <tr>
                <td><asp:Button runat="server" ID="adminBtn" CssClass="btn btn-primary btn-lg" Text="Admin" OnClick="adminBtn_Click"/></td>
                <td></td><td></td>
                <td><asp:Button runat="server" ID="lectBtn" CssClass="btn btn-secondary btn-lg" Text="Lecturer" OnClick="lectBtn_Click"/></td>
            </tr>
        </table>
        </center>
    </form>
</body>
</html>
