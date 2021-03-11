<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DatabaseProject.Champion" %>

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
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style1">MOBA GAME DATA</span><br class="auto-style1" />
            </strong>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Champion" />
            &nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="LeaderBoard" />
&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Rank" />
&nbsp;
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="AllGameRecord" />
&nbsp;
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="PurchaseHistory" />
            <br />
            <br />
&nbsp;Account Name&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp; Password&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="login" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MOBAGAME %>" SelectCommand="SELECT * FROM [UserAccount]" ></asp:SqlDataSource>
            <br />
            <br />
            <br />
            No Account? -----&gt; <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
