<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PurchaseHistory.aspx.cs" Inherits="DatabaseProject.PurchaseHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="back To Home" />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountName,ConfirmNumber" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="AccountName" HeaderText="AccountName" ReadOnly="True" SortExpression="AccountName" />
                <asp:BoundField DataField="ConfirmNumber" HeaderText="ConfirmNumber" ReadOnly="True" SortExpression="ConfirmNumber" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="SkinName" HeaderText="SkinName" SortExpression="SkinName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [PurchaseHistory]"></asp:SqlDataSource>
    </form>
</body>
</html>
