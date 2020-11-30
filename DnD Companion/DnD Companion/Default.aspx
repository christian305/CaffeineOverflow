<%@ Page Title="Home" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DnD_Companion.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 34px;
            width: 202px;
        }
        .auto-style3 {
            height: 34px;
            width: 182px;
        }
        .auto-style4 {
            width: 182px;
        }
        .auto-style5 {
            height: 34px;
            width: 274px;
        }
        .auto-style6 {
            width: 274px;
        }
        .auto-style7 {
            width: 202px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            font-size: 12pt;
        }
        .auto-style10 {
            height: 26px;
            width: 278px;
        }
        .auto-style11 {
            width: 278px;
        }

        table.center{
            margin-left:auto;
            margin-right:auto;
        }

        body{
            background: rgba(137, 121, 121, 0.49)
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Home page"></asp:Label>
    <asp:MultiView ID="MultiView1" runat="server">
    </asp:MultiView>

    <table border="1" class="table-responsive-sm center">
        <tr>
            <td colspan="3" style="text-align: center">Character Name:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Race:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">Experience Point:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">Background:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Subrace:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style7">class &amp; Level:
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">Alignment:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <div>
        &ensp;
    </div>
    <table class="table-responsive-sm center" border="1">
        <tr>
            <td class="auto-style8">Strength:
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style8">Dexterity: <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style10">Constitution:<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>intellingence: <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td>Wisdom: <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style11">Charisma<span class="auto-style9">:<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </span></td>
        </tr>
    </table>
    <div>
        &ensp;
    </div>

    <table border="1" class="table-responsive-sm center">
        <tr>
            <td>Armor Class:
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
            <td>Initiative:
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            </td>
            <td>Speed:
                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Current Hit Points:
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            </td>
            <td>Temporary Hit points:
                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            </td>
            <td>Hit Dice:
                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
        
    <div>
        &ensp;
    </div>

    <table border="1" class="table-responsive-sm center">
        <tr>
            <td class="auto-style8">Personality Traits:&nbsp;
                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ideals:&nbsp; <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Bonds: <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Flaws:&nbsp; <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

    <div>
        &ensp;
    </div>

    <table border="1" class="table-responsive-sm center">
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" />
                Strength:
                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" />
                Dexterity:<asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton3" runat="server" />
                Constitution:<asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton4" runat="server" />
                Intelligence:<asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton5" runat="server" />
                Wisdom:<asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton6" runat="server" />
                Charisma:<asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
            </td>
        </tr>

    </table>

        <div>
            &ensp;
        </div>
    <table border="1" class="table-responsive-sm center">
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton7" runat="server" />
                Acrobatics (Dex)<asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton8" runat="server" />
                Animal Handling (wis)<asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton9" runat="server" />
                Arcana (int)<asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton10" runat="server" />
                Athletics (str)<asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton11" runat="server" />
                Deception (cha)<asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton12" runat="server" />
                History (int)<asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton13" runat="server" />
                Insight (Wis)<asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton14" runat="server" />
                Intimidation (cha)<asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton15" runat="server" />
                Investigation (Int)<asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton16" runat="server" />
                Medicine (Wis)<asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton17" runat="server" />
                Nature (int)<asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton18" runat="server" />
                Perception (Wis)<asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton19" runat="server" />
                Performance (cha)<asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton20" runat="server" />
                Persuasion (Cha)<asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton21" runat="server" />
                Religion (int)<asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton22" runat="server" />
                Sleight of Hand (Dex)<asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton23" runat="server" />
                Stealth (Dex)<asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton24" runat="server" />
                Survival (wis)<asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    </asp:Content>
