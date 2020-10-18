<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dice.aspx.cs" Inherits="caffeineOverflowV4.Dice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="Table1" runat="server" Width="500">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell><p>Dice roller</p></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Dice</asp:TableCell>
                <asp:TableCell>Number</asp:TableCell>
                <asp:TableCell>Adv/Dis</asp:TableCell>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>Results</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>D2</asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="tbD2" runat="server"></asp:TextBox> </asp:TableCell>
                <asp:TableCell><asp:RadioButton ID="rbD2A" runat="server" /><asp:RadioButton ID="rbD2D" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:Button ID="btD2" runat="server" Text="Roll" /></asp:TableCell>
                <asp:TableCell><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>D4</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="tbD4" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RadioButton ID="rbD4A" runat="server" /><asp:RadioButton ID="rbD4D" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:Button ID="btD4" runat="server" Text="Roll" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>D6</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="tbD6" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RadioButton ID="rbD6A" runat="server" /><asp:RadioButton ID="rbD6D" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:Button ID="btD6" runat="server" Text="Roll" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>D8</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="tbD8" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RadioButton ID="rbD8A" runat="server" /><asp:RadioButton ID="rbD8D" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:Button ID="btD8" runat="server" Text="Roll" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>D10</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="tbD10" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RadioButton ID="rbD10A" runat="server" /><asp:RadioButton ID="rbD10D" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:Button ID="btD10" runat="server" Text="Roll" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>D12</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="tbD12" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RadioButton ID="rbD12A" runat="server" /><asp:RadioButton ID="rbD12D" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:Button ID="btD12" runat="server" Text="Roll" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>D20</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="tbD20" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RadioButton ID="rbD20A" runat="server" /><asp:RadioButton ID="rbD20D" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:Button ID="btD20" runat="server" Text="Roll" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>D100</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="tbD100" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RadioButton ID="rbD100A" runat="server" /><asp:RadioButton ID="rbD100D" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:Button ID="btD100" runat="server" Text="Roll" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>

            </asp:TableRow>

        </asp:Table>
        <asp:ListBox ID="lboxResults" runat="server"></asp:ListBox>
    </form>
</body>
</html>
