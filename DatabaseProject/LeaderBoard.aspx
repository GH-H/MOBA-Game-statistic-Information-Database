<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaderBoard.aspx.cs" Inherits="DatabaseProject.LeaderBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back To Home" />
&nbsp;
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PositionNumber" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="PositionNumber" HeaderText="PositionNumber" ReadOnly="True" SortExpression="PositionNumber" />
                <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                <asp:BoundField DataField="RankName" HeaderText="RankName" SortExpression="RankName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [LeaderBoard]"></asp:SqlDataSource>
    </form>
</body>
</html>
