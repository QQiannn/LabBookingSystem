<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LectSignUp.aspx.cs" Inherits="LabBookingSystem.LectSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <link href="lectStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #EEF5DB;
        }
        .auto-style2 {
            height: 54px;
            background-color: #04ACA4;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style8 {
            width: 116px;
            height: 32px;
            background-color: #EEF5DB;
        }
        .auto-style10 {
            width: 116px;
            height: 35px;
            background-color: #EEF5DB;
        }
        .auto-style12 {
            width: 116px;
            height: 37px;
            background-color: #EEF5DB;
        }
        .auto-style14 {
            width: 116px;
            height: 34px;
            background-color: #EEF5DB;
        }
        .auto-style15 {
            text-align: center;
            background-color: #EEF5DB;
            width: 201px;
        }
        .auto-style16 {
            height: 36px;
            background-color: #EEF5DB;
        }
        .auto-style17 {
            width: 116px;
            height: 36px;
            background-color: #EEF5DB;
        }
        .auto-style18 {
            background-color: #EEF5DB;
        }
        .auto-style19 {
            width: 116px;
            background-color: #EEF5DB;
        }
        .auto-style20 {
            height: 34px;
            background-color: #EEF5DB;
        }
        .auto-style21 {
            height: 37px;
            background-color: #EEF5DB;
        }
        .auto-style22 {
            height: 35px;
            background-color: #EEF5DB;
        }
        .auto-style23 {
            height: 32px;
            background-color: #EEF5DB;
        }
        .auto-style30 {
            color: #FFFFFF;
        }
        .auto-style31 {
            width: 87px;
            background-color: #EEF5DB;
        }
        .auto-style32 {
            height: 36px;
            width: 87px;
            background-color: #EEF5DB;
        }
        .auto-style33 {
            height: 32px;
            width: 87px;
            background-color: #EEF5DB;
        }
        .auto-style34 {
            height: 35px;
            width: 87px;
            background-color: #EEF5DB;
        }
        .auto-style35 {
            height: 37px;
            width: 87px;
            background-color: #EEF5DB;
        }
        .auto-style36 {
            height: 34px;
            width: 87px;
            background-color: #EEF5DB;
        }
        .auto-style37 {
            width: 201px;
            background-color: #EEF5DB;
        }
        .auto-style38 {
            width: 201px;
            height: 36px;
            background-color: #EEF5DB;
        }
        .auto-style39 {
            width: 201px;
            height: 32px;
            background-color: #EEF5DB;
        }
        .auto-style40 {
            width: 201px;
            height: 35px;
            background-color: #EEF5DB;
        }
        .auto-style41 {
            width: 201px;
            height: 37px;
            background-color: #EEF5DB;
        }
        .auto-style42 {
            width: 201px;
            height: 34px;
            background-color: #EEF5DB;
        }
        .auto-style43 {
            width: 203px;
            background-color: #EEF5DB;
        }
        .auto-style44 {
            width: 203px;
            height: 36px;
            background-color: #EEF5DB;
        }
        .auto-style45 {
            width: 203px;
            height: 32px;
            background-color: #EEF5DB;
        }
        .auto-style46 {
            width: 203px;
            height: 35px;
            background-color: #EEF5DB;
        }
        .auto-style47 {
            width: 203px;
            height: 37px;
            background-color: #EEF5DB;
        }
        .auto-style48 {
            width: 203px;
            height: 34px;
            background-color: #EEF5DB;
        }
        .auto-style49 {
            width: 87px;
            background-color: #EEF5DB;
            height: 23px;
        }
        .auto-style50 {
            width: 116px;
            background-color: #EEF5DB;
            height: 23px;
        }
        .auto-style51 {
            width: 201px;
            background-color: #EEF5DB;
            height: 23px;
        }
        .auto-style52 {
            width: 203px;
            background-color: #EEF5DB;
            height: 23px;
        }
        .auto-style53 {
            background-color: #EEF5DB;
            height: 23px;
        }
        .auto-style54 {
            background-color: #EEF5DB;
            font-size: large;
        }
        .auto-style55 {
            width: 254px;
            background-color: #EEF5DB;
        }
        .auto-style56 {
            width: 254px;
            height: 36px;
            background-color: #EEF5DB;
        }
        .auto-style57 {
            width: 254px;
            height: 32px;
            background-color: #EEF5DB;
        }
        .auto-style58 {
            width: 254px;
            height: 35px;
            background-color: #EEF5DB;
        }
        .auto-style59 {
            width: 254px;
            height: 37px;
            background-color: #EEF5DB;
        }
        .auto-style60 {
            width: 254px;
            height: 34px;
            background-color: #EEF5DB;
        }
        .auto-style61 {
            width: 254px;
            background-color: #EEF5DB;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="6">&nbsp; <span class="auto-style3"><em><strong>&nbsp;<span class="auto-style30">Lab Appointment System</span></strong></em></span></td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style54" colspan="4"><strong>SignUp Lecturer</strong></td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32"></td>
                <td class="auto-style17">Lecturer ID:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="hi" ControlToValidate="TextBox1" ErrorMessage="Please fill in Lecturer ID!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style56"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style8">Name:</td>
                <td class="auto-style39">
                    <asp:TextBox ID="TextBox2" runat="server" Width="203px"></asp:TextBox>
                </td>
                <td class="auto-style45">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="hi" ControlToValidate="TextBox2" ErrorMessage="Please fill in Your name!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style10">Email:</td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style46">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="hi" ControlToValidate="TextBox3" ErrorMessage="Please fill in Email!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style58"></td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style12">Phone Number:</td>
                <td class="auto-style41">
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style47">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="hi" ControlToValidate="TextBox4" ErrorMessage="Please fill in Phone Number!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style59"></td>
                <td class="auto-style21">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style14">Gender:</td>
                <td class="auto-style42">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Choose</asp:ListItem>
                        <asp:ListItem>Man</asp:ListItem>
                        <asp:ListItem>Woman</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style48">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="hi" ControlToValidate="DropDownList1" ErrorMessage="Please choose your gender!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style60"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style32"></td>
                <td class="auto-style17">Password:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox5" runat="server" Width="198px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="hi" ControlToValidate="TextBox5" ErrorMessage="Please fill in the password!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style56">
                </td>
                <td class="auto-style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server"  ValidationGroup="hi" OnClick="Button1_Click" Text="SIGNUP" CssClass="btn btn-primary" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="BACK" CssClass="btn btn-secondary" />
                </td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style50"></td>
                <td class="auto-style51"></td>
                <td class="auto-style52"></td>
                <td class="auto-style61"></td>
                <td class="auto-style53"></td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
