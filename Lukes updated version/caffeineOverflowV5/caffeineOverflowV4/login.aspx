<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="caffeineOverflowV4.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><asp:TextBox ID="TextBox1" runat="server" Width="291px">WELCOME TO TABLE TOP GAMING</asp:TextBox></div>
        <div><asp:Button ID="returning_player" runat="server" Text="RETURNING PLAYER" Width="144px" PostBackURL="~/Returning_player.aspx"/></div>
        <div><asp:Button ID="new_player" runat="server" Text="NEW PLAYER" Width="144px" allign="center" PostBackUrl="~/character_creation.aspx"/></div>
    </form>
</body>
</html>
