<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminInsertLab.aspx.cs" Inherits="LabBookingSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center>
    
    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="labID" DataSourceID="LabBookingData" ID="GridView1">
        <Columns>
            <asp:BoundField DataField="labID" HeaderText="ID" ReadOnly="True" SortExpression="labID" />
            <asp:BoundField DataField="labName" HeaderText="Name" SortExpression="labName" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <br />

    <asp:Button runat="server" ID="insertNewBtn" Text="INSERT NEW LAB" CssClass="btn btn-primary " OnClick="insertNewBtn_Click" />
    <br /><br />
    <div>
            <asp:Table runat="server" ID="insertTable">
            <asp:TableHeaderRow>
                <asp:TableCell colspan="4"><center><strong>INSERT NEW LAB INFORMATION</strong></center></asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell CssClass="auto-style1">Lab ID</asp:TableCell>
                <asp:TableCell CssClass="auto-style2">:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="idTxtBox" runat="server" CssClass="offset-sm-0" Width="339px"></asp:TextBox></asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="idReq" runat="server" ControlToValidate="idTxtBox" ErrorMessage="Please fill in the lab ID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="auto-style1">Lab Name</asp:TableCell>
                <asp:TableCell CssClass="auto-style2">:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="nameTxtBox" runat="server" Width="336px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="nameReq" runat="server" ControlToValidate="nameTxtBox" ErrorMessage="Please fill in the lab name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>&nbsp;</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="addBtn" runat="server" OnClick="addBtn_Click" Text="Add Lab" CssClass="btn btn-primary" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        </div>
        <br />
             <asp:Image ID="successImg" runat="server" ImageUrl="~/check.png" Height="20px" Width="20px" />
             <asp:Label ID="successLbl" runat="server" ForeColor="#006600" Text="Data successfully added! "></asp:Label>
        </center>
        <div>
            <asp:SqlDataSource ID="LabBookingData" runat="server" ConnectionString="<%$ ConnectionStrings:LabBookingsConnectionString %>" SelectCommand="SELECT * FROM [Lab]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Lab] WHERE [labID] = @original_labID AND [labName] = @original_labName" InsertCommand="INSERT INTO [Lab] ([labID], [labName]) VALUES (@labID, @labName)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Lab] SET [labName] = @labName WHERE [labID] = @original_labID AND [labName] = @original_labName">
                <DeleteParameters>
                    <asp:Parameter Name="original_labID" Type="String" />
                    <asp:Parameter Name="original_labName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="labID" Type="String" />
                    <asp:Parameter Name="labName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="labName" Type="String" />
                    <asp:Parameter Name="original_labID" Type="String" />
                    <asp:Parameter Name="original_labName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>
