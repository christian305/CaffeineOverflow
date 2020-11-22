<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Character_creation.aspx.cs" Inherits="caffeineOverflowV4.Character_creation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu

                ID="Menu1"

                runat="server"

                Orientation="Horizontal"

                StaticEnableDefaultPopOutImage="False"

                OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem ImageUrl="~/selectedtab.GIF" 
                        Text="Race" Value="0"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="~/unselectedtab.GIF"
                        Text="Class/Level" Value="1"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="~/unselectedtab.GIF" 
                        Text="Ability Scores/Feats" Value="2"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="~/unselectedtab.GIF"
                        Text="Background" Value="3"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="~/unselectedtab.GIF"
                        Text="Proficiencies" Value="4"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="~/unselectedtab.GIF"
                        Text="Spells" Value="5"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="~/unselectedtab.GIF"
                        Text="Equipment" Value="6"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div>
            <asp:MultiView 

    ID="MultiView1"

    runat="server"

    ActiveViewIndex="0"  >
   <asp:View ID="Tab1" runat="server"  >
        <table width="600" height="400" cellpadding=0 cellspacing=0>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">
                    <br />
                    <br />
                    Race<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Dragonborn</asp:ListItem>
                        <asp:ListItem>Dwarf</asp:ListItem>
                        <asp:ListItem>Elf</asp:ListItem>
                        <asp:ListItem>Gnome</asp:ListItem>
                        <asp:ListItem>Half-Elf</asp:ListItem>
                        <asp:ListItem>Half-Orc</asp:ListItem>
                        <asp:ListItem>Halfling</asp:ListItem>
                        <asp:ListItem>Human</asp:ListItem>
                        <asp:ListItem>Tiefling</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">&nbsp;</td>
            </tr>
        </table>
     </asp:View>
    <asp:View ID="Tab2" runat="server">
        <table width="600px" height="400px" cellpadding=0 cellspacing=0>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">
                    <br />
                    <br />
                    Class/Level
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Barbarian</asp:ListItem>
                        <asp:ListItem>Bard</asp:ListItem>
                        <asp:ListItem>Cleric</asp:ListItem>
                        <asp:ListItem>Druid</asp:ListItem>
                        <asp:ListItem>Fighter</asp:ListItem>
                        <asp:ListItem>Monk</asp:ListItem>
                        <asp:ListItem>Paladin</asp:ListItem>
                        <asp:ListItem>Ranger</asp:ListItem>
                        <asp:ListItem>Rogue</asp:ListItem>
                        <asp:ListItem>Sorcerer</asp:ListItem>
                        <asp:ListItem>Warlock</asp:ListItem>
                        <asp:ListItem>Wizard</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="Tab3" runat="server">
        <table width="600px" height="400px" cellpadding=0 cellspacing=0>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">
                <br />
                <br />
                  TAB VIEW 3
                  INSERT YOUR CONENT IN HERE
                  CHANGE SELECTED IMAGE URL AS NECESSARY
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View4" runat="server">
        <table width="600px" height="400px" cellpadding=0 cellspacing=0>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">
                <br />
                    <br />
                    Alignment
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Chaotic Evil</asp:ListItem>
                        <asp:ListItem>Chaotic Good</asp:ListItem>
                        <asp:ListItem>Chaotic Neutral</asp:ListItem>
                        <asp:ListItem>Lawful Evil</asp:ListItem>
                        <asp:ListItem>Lawful Good</asp:ListItem>
                        <asp:ListItem>Lawful Neutral</asp:ListItem>
                        <asp:ListItem>Neutral</asp:ListItem>
                        <asp:ListItem>Neutral Evil</asp:ListItem>
                        <asp:ListItem>Neutral Good</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    Background<br />
                    <br />
                    Acolyte
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </td>
            </tr>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">&nbsp;</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View5" runat="server">
        <table width="600px" height="400px" cellpadding=0 cellspacing=0>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">
                <br />
                <br />
                    Skill Proficiency (Pick 2)<br />
                    <br />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Acrobatics" />
                    <br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Athletics" />
                    <br />
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="History" />
                    <br />
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="Insight" />
                    <br />
                    <asp:CheckBox ID="CheckBox6" runat="server" Text="Religion" />
                    <br />
                    <asp:CheckBox ID="CheckBox7" runat="server" Text="Stealth" />
                    <br />
                    <br />
                    Languages (Pick 2)<br />
                    <asp:CheckBox ID="CheckBox8" runat="server" Text="Abyssal" />
                    <br />
                    <asp:CheckBox ID="CheckBox9" runat="server" Text="Celestial" />
                    <br />
                    <asp:CheckBox ID="CheckBox10" runat="server" Text="Common" />
                    <br />
                    <asp:CheckBox ID="CheckBox11" runat="server" Text="Deep Speech" />
                    <br />
                    <asp:CheckBox ID="CheckBox12" runat="server" Text="Draconic" />
                    <br />
                    <asp:CheckBox ID="CheckBox13" runat="server" Text="Dwarvish" />
                    <br />
                    <asp:CheckBox ID="CheckBox14" runat="server" Text="Elvish" />
                    <br />
                    <asp:CheckBox ID="CheckBox15" runat="server" Text="Giant" />
                    <br />
                </td>
            </tr>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">&nbsp;</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View6" runat="server">
        <table width="600px" height="400px" cellpadding=0 cellspacing=0>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">
                <br />
                <br />
                  TAB VIEW 6
                  INSERT YOUR CONENT IN HERE
                  CHANGE SELECTED IMAGE URL AS NECESSARY
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View7" runat="server">
        <table width="600px" height="400px" cellpadding=0 cellspacing=0>
            <tr valign="top">
                <td class="TabArea" style="width: 600px">
                <br />
                <br />
                  TAB VIEW 7
                  INSERT YOUR CONENT IN HERE
                  CHANGE SELECTED IMAGE URL AS NECESSARY
                </td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
        </div>
    </form>
</body>
</html>
