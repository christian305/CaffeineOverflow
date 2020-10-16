<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dice.aspx.cs" Inherits="caffeineOverflowV4.Dice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><asp:DropDownList runat="server" ID="DiceDropList" AutoPostBack="True" OnSelectedIndexChanged="DiceDropList_SelectedIndexChanged">
            <asp:ListItem>Tetrahedron</asp:ListItem>
            <asp:ListItem>Cube</asp:ListItem>
            <asp:ListItem>Octahedron</asp:ListItem>
            <asp:ListItem>Pentagonal Trapezohedron</asp:ListItem>
            <asp:ListItem>Dodecahedron</asp:ListItem>
            <asp:ListItem>Icosahedron</asp:ListItem>
            </asp:DropDownList></div>
        
        <asp:Button ID="roll" runat="server" OnClick="roll_Click" Text="Roll" Width="176px" />
        
    </form>
</body>
</html>
