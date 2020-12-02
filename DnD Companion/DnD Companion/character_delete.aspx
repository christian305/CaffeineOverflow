<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="character_delete.aspx.cs" Inherits="DnD_Companion.character_delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Character_name" DataValueField="Character_name" Height="148px" Width="142px"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:items__ %>" SelectCommand="SELECT [Character_name] FROM [characters] ORDER BY [Character_name]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Select character for deletion"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Default.aspx" Text="Return" />
        </div>
    </form>
</body>
</html>
