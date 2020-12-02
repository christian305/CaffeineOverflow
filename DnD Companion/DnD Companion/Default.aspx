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
            <td>
                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Character_name" DataValueField="Character_name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnDataBound="DropDownList1_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:items__ %>" SelectCommand="SELECT * FROM [characters] ORDER BY [Character_name]"></asp:SqlDataSource>
            </td>
            <td>
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/Default.aspx" Text="Save" />
            </td>
        </tr>
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
            <td>intelligence: <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
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
        <tr>
            <td>
                
               
                <br />
                <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Character_name" DataSourceID="SqlDataSource1" Visible="False" Width="4061px">
                    <Columns>
                        <asp:BoundField DataField="Character_name" HeaderText="Character_name" ReadOnly="True" SortExpression="Character_name" />
                        <asp:BoundField DataField="race" HeaderText="race" SortExpression="race" />
                        <asp:BoundField DataField="XP_points" HeaderText="XP_points" SortExpression="XP_points" />
                        <asp:BoundField DataField="background" HeaderText="background" SortExpression="background" />
                        <asp:BoundField DataField="subrace" HeaderText="subrace" SortExpression="subrace" />
                        <asp:BoundField DataField="class_level" HeaderText="class_level" SortExpression="class_level" />
                        <asp:BoundField DataField="alignment" HeaderText="alignment" SortExpression="alignment" />
                        <asp:BoundField DataField="strength" HeaderText="strength" SortExpression="strength" />
                        <asp:BoundField DataField="dexterity" HeaderText="dexterity" SortExpression="dexterity" />
                        <asp:BoundField DataField="constitution" HeaderText="constitution" SortExpression="constitution" />
                        <asp:BoundField DataField="intelligence" HeaderText="intelligence" SortExpression="intelligence" />
                        <asp:BoundField DataField="wisdom" HeaderText="wisdom" SortExpression="wisdom" />
                        <asp:BoundField DataField="charisma" HeaderText="charisma" SortExpression="charisma" />
                        <asp:BoundField DataField="armor_class" HeaderText="armor_class" SortExpression="armor_class" />
                        <asp:BoundField DataField="initiative" HeaderText="initiative" SortExpression="initiative" />
                        <asp:BoundField DataField="speed" HeaderText="speed" SortExpression="speed" />
                        <asp:BoundField DataField="current_hit" HeaderText="current_hit" SortExpression="current_hit" />
                        <asp:BoundField DataField="temp_hit" HeaderText="temp_hit" SortExpression="temp_hit" />
                        <asp:BoundField DataField="hit_dice" HeaderText="hit_dice" SortExpression="hit_dice" />
                        <asp:BoundField DataField="person_traits" HeaderText="person_traits" SortExpression="person_traits" />
                        <asp:BoundField DataField="ideals" HeaderText="ideals" SortExpression="ideals" />
                        <asp:BoundField DataField="bonds" HeaderText="bonds" SortExpression="bonds" />
                        <asp:BoundField DataField="flaws" HeaderText="flaws" SortExpression="flaws" />
                        <asp:BoundField DataField="strength2" HeaderText="strength2" SortExpression="strength2" />
                        <asp:BoundField DataField="dexterity2" HeaderText="dexterity2" SortExpression="dexterity2" />
                        <asp:BoundField DataField="constitution2" HeaderText="constitution2" SortExpression="constitution2" />
                        <asp:BoundField DataField="intelligence2" HeaderText="intelligence2" SortExpression="intelligence2" />
                        <asp:BoundField DataField="wisdom2" HeaderText="wisdom2" SortExpression="wisdom2" />
                        <asp:BoundField DataField="charisma2" HeaderText="charisma2" SortExpression="charisma2" />
                        <asp:BoundField DataField="acrobatics" HeaderText="acrobatics" SortExpression="acrobatics" />
                        <asp:BoundField DataField="animal_hand" HeaderText="animal_hand" SortExpression="animal_hand" />
                        <asp:BoundField DataField="arcana" HeaderText="arcana" SortExpression="arcana" />
                        <asp:BoundField DataField="athletics" HeaderText="athletics" SortExpression="athletics" />
                        <asp:BoundField DataField="deception" HeaderText="deception" SortExpression="deception" />
                        <asp:BoundField DataField="history" HeaderText="history" SortExpression="history" />
                        <asp:BoundField DataField="insight" HeaderText="insight" SortExpression="insight" />
                        <asp:BoundField DataField="intimidation" HeaderText="intimidation" SortExpression="intimidation" />
                        <asp:BoundField DataField="investigation" HeaderText="investigation" SortExpression="investigation" />
                        <asp:BoundField DataField="medicine" HeaderText="medicine" SortExpression="medicine" />
                        <asp:BoundField DataField="nature" HeaderText="nature" SortExpression="nature" />
                        <asp:BoundField DataField="perception" HeaderText="perception" SortExpression="perception" />
                        <asp:BoundField DataField="performance" HeaderText="performance" SortExpression="performance" />
                        <asp:BoundField DataField="persuasion" HeaderText="persuasion" SortExpression="persuasion" />
                        <asp:BoundField DataField="religion" HeaderText="religion" SortExpression="religion" />
                        <asp:BoundField DataField="sleight_ofhand" HeaderText="sleight_ofhand" SortExpression="sleight_ofhand" />
                        <asp:BoundField DataField="stealth" HeaderText="stealth" SortExpression="stealth" />
                        <asp:BoundField DataField="survival" HeaderText="survival" SortExpression="survival" />
                        <asp:BoundField DataField="blank_space" HeaderText="blank_space" SortExpression="blank_space" />
                    </Columns>
                </asp:GridView>
    </asp:Content>
