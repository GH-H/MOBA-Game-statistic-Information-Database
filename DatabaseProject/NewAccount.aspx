<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="DatabaseProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp; New Account Creation</span></strong></p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back To Home" />
        </p>
        &nbsp;
        <asp:Label ID="UserNameLabel" runat="server" Text="UserName:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="UserNameTextBox" runat="server" OnTextChanged="UserNameTextBox_TextChanged"></asp:TextBox>
        10 char max
        <p>
            &nbsp;&nbsp;&nbsp;
        <asp:Label ID="UserNameLabel0" runat="server" Text="Password:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="PasswordTextBox" runat="server" OnTextChanged="UserNameTextBox_TextChanged"></asp:TextBox>
            12 char max</p>
        <p>
            &nbsp;&nbsp;&nbsp;
        <asp:Label ID="UserNameLabel1" runat="server" Text="Gender:"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="GenderTextBox" runat="server" OnTextChanged="UserNameTextBox_TextChanged"></asp:TextBox>
            &nbsp;must be 1 char </p>
        <p>
            &nbsp;&nbsp;&nbsp;
        <asp:Label ID="UserNameLabel2" runat="server" Text="Age:"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AgeTextBox" runat="server" OnTextChanged="UserNameTextBox_TextChanged"></asp:TextBox>
            &nbsp;3 max</p>
        <p>
            &nbsp;&nbsp;&nbsp;
        <asp:Label ID="UserNameLabel3" runat="server" Text="Email:"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="EmailTextBox" runat="server" OnTextChanged="UserNameTextBox_TextChanged"></asp:TextBox>
            &nbsp;30 max</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Create" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [UserAccount]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
