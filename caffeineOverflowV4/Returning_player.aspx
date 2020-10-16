<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Returning_player.aspx.cs" Inherits="caffeineOverflowV4.Returning_player" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
        <p>
            
            <asp:ImageButton ID="Roll" runat="server" Height="40px" Width="190px" PostBackURL="~/Roll.aspx"/>
        </p>
         <p>
            <asp:ImageButton ID="Item_list" runat="server" Height="40px" Width="190px" PostBackURL="~/Item_list.aspx"/>
        </p>
        <p>
            <asp:ImageButton ID="Spell_List" runat="server" Height="40px" Width="190px" PostBackURL="~/Spell_List.aspx"/>
        </p>
        <p>
            <asp:ImageButton ID="Character_Creation" runat="server" Height="40px" Width="190px" PostBackURL="~/Character_creation.aspx"/>
        </p>
    </form>
</body>
</html>
