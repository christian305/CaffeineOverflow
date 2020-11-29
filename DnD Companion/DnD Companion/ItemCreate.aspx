<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemCreate.aspx.cs" Inherits="DnD_Companion.ItemCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
button,input{overflow:visible}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
        .auto-style1 {
            width: 290px;
        }
        .auto-style2 {
            height: 341px;
        }
        .auto-style3 {
            width: 290px;
            height: 137px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
    <table class="auto-style7">
        <tr>
            <td class="auto-style1" style="border-style: double; background-color: #C0C0C0;">Item Name</td>
            <td class="auto-style1" style="border-style: double; background-color: #C0C0C0;">
                <asp:TextBox ID="TextBox1" runat="server" Width="241px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="border-style: none double double double; background-color: #C0C0C0;">Item Type</td>
            <td class="auto-style1" style="border-style: none double double double; background-color: #C0C0C0;">
                <asp:TextBox ID="TextBox2" runat="server" Width="241px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="border-style: none double double double; background-color: #C0C0C0;">Item Desription</td>
            <td class="auto-style3" style="border-style: none double double double; background-color: #C0C0C0;">
                <asp:TextBox ID="TextBox3" runat="server" Height="97px" TextMode="MultiLine" Width="241px"></asp:TextBox>
            </td>
        </tr>
        <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Item Created!" Visible="False"></asp:Label>
        </table>
    

            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/ItemList.aspx" Text="Return" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
