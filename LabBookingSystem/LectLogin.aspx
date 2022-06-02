<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LectLogin.aspx.cs" Inherits="LabBookingSystem.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <link href="lectStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        table, tr, td{
            border:none;
        }
        .auto-style1 {
            width: 100%;
            background-color: #EEF5DB;
        }
        .auto-style3 {
            width: 87px;
            background-color: #EEF5DB;
        }
        .auto-style9 {
            height: 23px;
            text-align: center;
            background-color: #EEF5DB;
        }
        .auto-style10 {
            height: 60px;
            font-size: x-large;
            color: #FFFFFF;
            background-color: #00CC99;
        }
        .auto-style11 {
            width: 34px;
            background-color: #EEF5DB;
        }
        .auto-style13 {
            width: 87px;
            height: 23px;
            background-color: #EEF5DB;
        }
        .auto-style15 {
            height: 23px;
            width: 34px;
            background-color: #EEF5DB;
        }
        .auto-style18 {
            width: 104px;
            background-color: #EEF5DB;
        }
        .auto-style19 {
            width: 104px;
            height: 23px;
            background-color: #EEF5DB;
        }
        .auto-style20 {
            width: 160px;
            background-color: #EEF5DB;
        }
        .auto-style21 {
            height: 23px;
            width: 160px;
            background-color: #EEF5DB;
        }
        .auto-style22 {
            width: 177px;
            background-color: #EEF5DB;
        }
        .auto-style23 {
            height: 23px;
            width: 177px;
            background-color: #EEF5DB;
        }
        .auto-style24 {
            width: 87px;
            background-color: #EEF5DB;
            height: 46px;
        }
        .auto-style25 {
            width: 104px;
            background-color: #EEF5DB;
            height: 46px;
        }
        .auto-style26 {
            width: 160px;
            background-color: #EEF5DB;
            height: 46px;
        }
        .auto-style27 {
            width: 177px;
            background-color: #EEF5DB;
            height: 46px;
        }
        .auto-style28 {
            width: 34px;
            background-color: #EEF5DB;
            height: 46px;
        }
        .auto-style29 {
            width: 87px;
            background-color: #EEF5DB;
            height: 33px;
        }
        .auto-style30 {
            width: 104px;
            background-color: #EEF5DB;
            height: 33px;
        }
        .auto-style31 {
            width: 160px;
            background-color: #EEF5DB;
            height: 33px;
        }
        .auto-style32 {
            width: 177px;
            background-color: #EEF5DB;
            height: 33px;
        }
        .auto-style33 {
            width: 34px;
            background-color: #EEF5DB;
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
          
            <tr>
                <td class="auto-style10" colspan="5"><em><strong>&nbsp;&nbsp;&nbsp;&nbsp; Lab Booking System</strong></em></td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style25"><strong>Login Lecturer</strong></td>
                <td class="auto-style26"></td>
                <td class="auto-style27">
                    Click<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="&quot;HERE&quot;" BorderStyle="None" BackColor="#EEF5DB" />
                    if you Admin</td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style25">Lecturer ID:</td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="201px"></asp:TextBox>
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style30"></td>
                <td class="auto-style31"></td>
                <td class="auto-style32">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">Password:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" Width="202px"></asp:TextBox>
                </td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style19"></td>
                <td class="auto-style21"></td>
                <td class="auto-style23"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" CssClass="btn btn-primary" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGNUP" CssClass="btn btn-success" />
                </td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Lecturer]"></asp:SqlDataSource>
    </form>
</body>
</html>
