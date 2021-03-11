<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="DatabaseProject.Rank" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Back To Home" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RankName" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="RankName" HeaderText="RankName" ReadOnly="True" SortExpression="RankName" />
                <asp:BoundField DataField="PlayerCount" HeaderText="PlayerCount" SortExpression="PlayerCount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [Rank]"></asp:SqlDataSource>
    </form>
</body>
</html>
