<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllGameRecord.aspx.cs" Inherits="DatabaseProject.AllGameRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back To Home" />
&nbsp;
            <br />
            select the game you want to query<br />
&nbsp;&nbsp;
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GameId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="GameId" HeaderText="GameId" ReadOnly="True" SortExpression="GameId" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="WinnerTeamNumber" HeaderText="WinnerTeamNumber" SortExpression="WinnerTeamNumber" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [GameRecords]"></asp:SqlDataSource>
        <br />
        select the team you want to query<br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="GameId,TeamNumber" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="GameId" HeaderText="GameId" ReadOnly="True" SortExpression="GameId" />
                <asp:BoundField DataField="TeamNumber" HeaderText="TeamNumber" ReadOnly="True" SortExpression="TeamNumber" />
                <asp:BoundField DataField="AverageScore" HeaderText="AverageScore" SortExpression="AverageScore" />
            </Columns>
        </asp:GridView>
        <br />
        select the player you want to querry information
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [Team] WHERE ([GameId] = @GameId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="GameId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="GameId,TeamNumber,AccountName" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="GameId" HeaderText="GameId" ReadOnly="True" SortExpression="GameId" />
                <asp:BoundField DataField="TeamNumber" HeaderText="TeamNumber" ReadOnly="True" SortExpression="TeamNumber" />
                <asp:BoundField DataField="AccountName" HeaderText="AccountName" ReadOnly="True" SortExpression="AccountName" />
                <asp:BoundField DataField="SkinName" HeaderText="SkinName" SortExpression="SkinName" />
                <asp:BoundField DataField="ChampionName" HeaderText="ChampionName" SortExpression="ChampionName" />
                <asp:BoundField DataField="Death" HeaderText="Death" SortExpression="Death" />
                <asp:BoundField DataField="Assistant" HeaderText="Assistant" SortExpression="Assistant" />
                <asp:BoundField DataField="Kill" HeaderText="Kill" SortExpression="Kill" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [TeamMember] WHERE (([GameId] = @GameId) AND ([TeamNumber] = @TeamNumber))">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="GameId" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="GridView2" Name="TeamNumber" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
