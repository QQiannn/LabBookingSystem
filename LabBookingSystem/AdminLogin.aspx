<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="LabBookingSystem.AdminLogin" %>

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
            background-color: #EEF5DB;
        }
        .auto-style2 {
            height: 50px;
            font-size: x-large;
            color: #FFFFFF;
            background-color: #0066CC;
        }
        .auto-style4 {
            width: 98px;
            background-color: #EEF5DB;
        }
        .auto-style8 {
            height: 42px;
            background-color: #EEF5DB;
        }
        .auto-style9 {
            background-color: #EEF5DB;
        }
        .auto-style12 {
            background-color: #EEF5DB;
            text-align: center;
            height: 72px;
        }
        .auto-style13 {
            width: 128px;
            background-color: #EEF5DB;
            height: 47px;
        }
        .auto-style14 {
            width: 335px;
            background-color: #EEF5DB;
            height: 47px;
        }
        .auto-style15 {
            width: 128px;
            background-color: #EEF5DB;
            height: 53px;
        }
        .auto-style16 {
            width: 335px;
            background-color: #EEF5DB;
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4"><em><strong>&nbsp; Lab Booking Appointment</strong></em></td>
            </tr>
            <tr>
                <td class="auto-style4" rowspan="6"></td>
                <td class="auto-style9" colspan="2" rowspan="2"><strong>Login Admin</strong></td>
                <td class="auto-style8">
                    Click<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="&quot;HERE&quot;" BorderStyle="None" BackColor="#EEF5DB" />
                    if you lecturer</td>
            </tr>
            <tr>
                <td class="auto-style9" rowspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">Username:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxtUsername" runat="server" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Password:</td>
                <td class="auto-style16">
                    <asp:TextBox TextMode="Password" ID="TxtPassword" runat="server" Width="189px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" Height="44px" Width="103px" CssClass="btn btn-primary" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
