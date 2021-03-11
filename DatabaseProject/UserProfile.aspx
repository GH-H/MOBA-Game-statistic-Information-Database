<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="DatabaseProject.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="back to home" />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            &#39;s Account<br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT [UserName], [Gender], [Age], [EmailAddress], [PassWord] FROM [UserAccount] WHERE ([UserName] = @UserName2)" DeleteCommand="DELETE FROM [UserAccount] WHERE [UserName] = @original_UserName" InsertCommand="INSERT INTO [UserAccount] ([UserName], [Gender], [Age], [EmailAddress], [PassWord]) VALUES (@UserName, @Gender, @Age, @EmailAddress, @PassWord)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [UserAccount] SET [Gender] = @Gender, [Age] = @Age, [EmailAddress] = @EmailAddress, [PassWord] = @PassWord WHERE [UserName] = @original_UserName">
            <DeleteParameters>
                <asp:Parameter Name="original_UserName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Age" Type="Decimal" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="PassWord" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="UserName2" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Age" Type="Decimal" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="PassWord" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        please select the ingame accountyou want to link <br />
        and type your username
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountName" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="AccountName" HeaderText="AccountName" ReadOnly="True" SortExpression="AccountName" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT [AccountName], [UserName] FROM [InGameAccount]"></asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="AccountName" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="AccountName" HeaderText="AccountName" ReadOnly="True" SortExpression="AccountName" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" DeleteCommand="DELETE FROM [InGameAccount] WHERE [AccountName] = @AccountName" InsertCommand="INSERT INTO [InGameAccount] ([AccountName], [UserName]) VALUES (@AccountName, @UserName)" SelectCommand="SELECT [AccountName], [UserName] FROM [InGameAccount] WHERE ([AccountName] = @AccountName)" UpdateCommand="UPDATE [InGameAccount] SET [UserName] = @UserName WHERE [AccountName] = @AccountName">
            <DeleteParameters>
                <asp:Parameter Name="AccountName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AccountName" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="AccountName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="AccountName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
