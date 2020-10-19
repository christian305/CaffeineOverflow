<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpellList.aspx.cs" Inherits="caffeineOverflowV4.SpellList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:BulletedList ID="blistSpells" runat="server" DataSourceID="SqlDataSource1" DataTextField="list_name" DataValueField="list_name"></asp:BulletedList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [list_name] FROM [5e_SRD_Spells]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
