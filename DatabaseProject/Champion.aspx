<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Champion.aspx.cs" Inherits="DatabaseProject.Champion1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back To Home" />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ChampionName" DataSourceID="ChampionDataSource">
            <Columns>
                <asp:BoundField DataField="ChampionName" HeaderText="ChampionName" ReadOnly="True" SortExpression="ChampionName" />
                <asp:BoundField DataField="Atk" HeaderText="Atk" SortExpression="Atk" />
                <asp:BoundField DataField="Def" HeaderText="Def" SortExpression="Def" />
                <asp:BoundField DataField="Health" HeaderText="Health" SortExpression="Health" />
                <asp:BoundField DataField="MovementSpeed" HeaderText="MovementSpeed" SortExpression="MovementSpeed" />
                <asp:BoundField DataField="SkillName" HeaderText="SkillName" SortExpression="SkillName" />
                <asp:BoundField DataField="StoreCategory" HeaderText="StoreCategory" SortExpression="StoreCategory" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ChampionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [Champion]"></asp:SqlDataSource>
        <p>
&nbsp;</p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="SkillName" DataSourceID="SkillDataSource">
            <Columns>
                <asp:BoundField DataField="SkillName" HeaderText="SkillName" ReadOnly="True" SortExpression="SkillName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SkillDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [SkillSet]"></asp:SqlDataSource>
    </form>
</body>
</html>
