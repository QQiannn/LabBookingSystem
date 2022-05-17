<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewLab.aspx.cs" Inherits="LabBookingSystem.ViewLab" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 576px;
        }

        .tableHeader{
            background-color: #04ACA4;
            font: #000;
        }

        .body{
            color: #EEF5DB;
        }

        .auto-style2 {
            height: 31px;
        }

        #mainTable{
            border-collapse: collapse;
        }

        .linkButtons{
            padding: 20px;
        }

        .auto-style3 {
            height: 31px;
            width: 249px;
        }

        #ListView1{
            width:100%;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="mainTable" style="width:100%;">
                <tr class="tableHeader">
                    <td colspan="2" class="auto-style3">&nbsp;</td>
                    <td colspan="2" class="auto-style2">
                        <asp:LinkButton class="linkButtons" ID ="LinkButton1" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Large" ForeColor="Black">Home</asp:LinkButton>
                        <asp:LinkButton class="linkButtons" ID="LinkButton2" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Large" ForeColor="Black">Bookings</asp:LinkButton>
                        <asp:LinkButton class="linkButtons" ID="LinkButton3" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Large" ForeColor="Black">Log Out</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td colspan="4"><center>
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="LabBookingData">
                            <AlternatingItemTemplate>
                                <tr style="background-color: #FAFAD2;color: #284775;">
                                    <td>
                                        <asp:Label ID="labNameLabel" runat="server" Text='<%# Eval("labName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="labLocationLabel" runat="server" Text='<%# Eval("labLocation") %>' />
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <tr style="background-color: #FFCC66;color: #000080;">
                                    <td>
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="labNameTextBox" runat="server" Text='<%# Bind("labName") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="labLocationTextBox" runat="server" Text='<%# Bind("labLocation") %>' />
                                    </td>
                                </tr>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="labNameTextBox" runat="server" Text='<%# Bind("labName") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="labLocationTextBox" runat="server" Text='<%# Bind("labLocation") %>' />
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <tr style="background-color: #FFFBD6;color: #333333;">
                                    <td>
                                        <asp:Label ID="labNameLabel" runat="server" Text='<%# Eval("labName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="labLocationLabel" runat="server" Text='<%# Eval("labLocation") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                    <th runat="server">labName</th>
                                                    <th runat="server">labLocation</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    <asp:NumericPagerField />
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                                    <td>
                                        <asp:Label ID="labNameLabel" runat="server" Text='<%# Eval("labName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="labLocationLabel" runat="server" Text='<%# Eval("labLocation") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="LabBookingData" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT [labName], [labLocation] FROM [Lab]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
