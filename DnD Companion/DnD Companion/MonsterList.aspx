<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MonsterList.aspx.cs" Inherits="DnD_Companion.MonsterList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 240px;
            width: 20px;
            height: 3px;
        }
        .auto-style8 {
            width: 1128px;
            height: 952px;
            margin-right: 3px;
        }
        .auto-style22 {
            width: 20px;
            height: 62px;
        }
        .auto-style26 {
            width: 20px;
            height: 34px;
        }
        .auto-style28 {
            width: 20px;
            height: 35px;
        }
        .auto-style42 {
            width: 1127px;
            height: 394px;
        }
        .auto-style43 {
            width: 277px;
            height: 62px;
        }
        .auto-style57 {
            width: 186px;
            height: 11px;
        }
        .auto-style58 {
            width: 20px;
            height: 11px;
        }
        .auto-style60 {
            width: 20px;
            height: 15px;
        }
        .auto-style63 {
            width: 186px;
            height: 15px;
        }
        .auto-style66 {
            width: 20px;
            height: 5px;
        }
        .auto-style69 {
            width: 186px;
            height: 5px;
        }
        .auto-style70 {
            width: 20px;
            height: 18px;
        }
        .auto-style73 {
            width: 186px;
            height: 18px;
        }
        .auto-style74 {
            width: 74px;
            height: 60px;
        }
        .auto-style75 {
            width: 74px;
            height: 15px;
        }
        .auto-style76 {
            width: 74px;
            height: 11px;
        }
        .auto-style77 {
            width: 74px;
            height: 3px;
        }
        .auto-style78 {
            width: 74px;
            height: 5px;
        }
        .auto-style79 {
            width: 74px;
            height: 18px;
        }
        .auto-style80 {
            width: 74px;
        }
        .auto-style81 {
            width: 20px;
            height: 24px;
        }
        .auto-style83 {
            width: 74px;
            height: 24px;
        }
        .auto-style84 {
            height: 24px;
            width: 186px;
        }
        .auto-style85 {
            width: 20px;
            height: 38px;
        }
        .auto-style86 {
            height: 38px;
        }
        .auto-style88 {
            width: 277px;
            height: 3px;
        }
        .auto-style89 {
            height: 3px;
        }
        .auto-style90 {
            height: 62px;
        }
        .auto-style91 {
            width: 186px;
        }
        .auto-style94 {
            height: 3px;
            width: 186px;
        }
        .auto-style96 {
            width: 168px;
            height: 15px;
        }
        .auto-style97 {
            width: 168px;
            height: 11px;
        }
        .auto-style98 {
            margin-left: 240px;
            width: 168px;
            height: 3px;
        }
        .auto-style99 {
            width: 168px;
            height: 5px;
        }
        .auto-style100 {
            width: 168px;
            height: 18px;
        }
        .auto-style101 {
            width: 168px;
            height: 34px;
        }
        .auto-style102 {
            width: 168px;
            height: 24px;
        }
        .auto-style103 {
            width: 168px;
            height: 35px;
        }
        .auto-style106 {
            width: 70px;
        }
        .auto-style109 {
            width: 20px;
            height: 60px;
        }
        .auto-style110 {
            width: 168px;
            height: 60px;
        }
        .auto-style111 {
            height: 60px;
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="202px" Width="238px" />
    &nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <table class="auto-style8">
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style109" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Name</td>
            <td class="auto-style110" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="name_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style74" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">
                Dex</td>
            <td class="auto-style111" aria-multiline="True" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="dex_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
            <td class="auto-style106" aria-multiline="True" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;" rowspan="10">
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" CssClass="offset-sm-0" DataSourceID="SqlDataSource1" DataTextField="list_name" DataValueField="list_name" Height="800px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="220px"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style60" colspan="1" draggable="true" rowspan="1" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Meta</td>
            <td class="auto-style96" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="meta_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style75" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">
                Dex Mod</td>
            <td class="auto-style63" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="dex_mob_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style58" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Reactions</td>
            <td class="auto-style97" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="reactions_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style76" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">
                Con</td>
            <td class="auto-style57" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="con_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">
                Armor Class</td>
            <td class="auto-style98" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="armor_lbl" runat="server"></asp:Label>
            </td>
            <td style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" class="auto-style77">Con Mob</td>
            <td class="auto-style94" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="con_mob_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style66" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Hit Points</td>
            <td class="auto-style99" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="hit_points_lbl" runat="server"></asp:Label>
            </td>
            <td style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" class="auto-style78">Intellect</td>
            <td class="auto-style69" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="intellect_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style70" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Speed</td>
            <td class="auto-style100" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="speed_lbl" runat="server"></asp:Label>
            </td>
            <td style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" class="auto-style79">Intellect Mod</td>
            <td class="auto-style73" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="intellect_mob_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Strength</td>
            <td class="auto-style101" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="str_lbl" runat="server"></asp:Label>
            </td>
            <td style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" class="auto-style80">Wisdom</td>
            <td class="auto-style91" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="wisdom_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style81" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Strength Mod</td>
            <td class="auto-style102" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="str_mob_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style83" style="border-style: double; background-color: #999999; font-size: larger; font-weight: bold; text-decoration: underline;">Wisdom Mod</td>
            <td class="auto-style84" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="wisdom_mob_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Charisma</td>
            <td class="auto-style103" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="charisma_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style80" style="border-style: double; background-color: #999999; font-size: larger; font-weight: bold; text-decoration: underline;">Saving Throws</td>
            <td style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;" class="auto-style91">
                <asp:Label ID="saving_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Charisma Mod</td>
            <td class="auto-style103" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="charisma_mob_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style80" style="border-style: double; background-color: #999999; font-size: larger; font-weight: bold; text-decoration: underline;">Senses</td>
            <td style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;" class="auto-style91">
                <asp:Label ID="senses_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Skills</td>
            <td id="skills_txt" class="auto-style90" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;" colspan="4">
                <asp:Label ID="skills_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style85" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Languages</td>
            <td class="auto-style86" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;" colspan="4">
                <asp:Label ID="language_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Challenge</td>
            <td class="auto-style90" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;" colspan="4">
                <asp:Label ID="challenge_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
    <table class="auto-style42">
        <tr>
            <td class="auto-style43" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;">Actions</td>
            <td class="auto-style90" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="action_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" aria-multiline="False">Legendary Actions</td>
            <td class="auto-style90" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="legendary_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" aria-multiline="False">Traits</td>
            <td class="auto-style90" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="traits_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" aria-multiline="False">Damage Immunities</td>
            <td class="auto-style90" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="damage_im_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" aria-multiline="False">Condition Immunities</td>
            <td class="auto-style90" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="condition_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" aria-multiline="False">Damage Resistances</td>
            <td class="auto-style90" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="damage_resist_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style88" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: larger; background-color: #999999;" aria-multiline="False">Damage Vulnerabilities </td>
            <td class="auto-style89" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="damage_vul_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
    <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" OnLoad="GridView1_Load"  >
        <Columns>
            <asp:BoundField DataField="list_name" HeaderText="list_name" SortExpression="list_name" />
            <asp:BoundField DataField="list_meta" HeaderText="list_meta" SortExpression="list_meta" />
            <asp:BoundField DataField="list_Armor_Class" HeaderText="list_Armor_Class" SortExpression="list_Armor_Class" />
            <asp:BoundField DataField="list_Hit_Points" HeaderText="list_Hit_Points" SortExpression="list_Hit_Points" />
            <asp:BoundField DataField="list_Speed" HeaderText="list_Speed" SortExpression="list_Speed" />
            <asp:BoundField DataField="list_STR" HeaderText="list_STR" SortExpression="list_STR" />
            <asp:BoundField DataField="list_STR_mod" HeaderText="list_STR_mod" SortExpression="list_STR_mod" />
            <asp:BoundField DataField="list_DEX" HeaderText="list_DEX" SortExpression="list_DEX" />
            <asp:BoundField DataField="list_DEX_mod" HeaderText="list_DEX_mod" SortExpression="list_DEX_mod" />
            <asp:BoundField DataField="list_CON" HeaderText="list_CON" SortExpression="list_CON" />
            <asp:BoundField DataField="list_CON_mod" HeaderText="list_CON_mod" SortExpression="list_CON_mod" />
            <asp:BoundField DataField="list_INT" HeaderText="list_INT" SortExpression="list_INT" />
            <asp:BoundField DataField="list_INT_mod" HeaderText="list_INT_mod" SortExpression="list_INT_mod" />
            <asp:BoundField DataField="list_WIS" HeaderText="list_WIS" SortExpression="list_WIS" />
            <asp:BoundField DataField="list_WIS_mod" HeaderText="list_WIS_mod" SortExpression="list_WIS_mod" />
            <asp:BoundField DataField="list_CHA" HeaderText="list_CHA" SortExpression="list_CHA" />
            <asp:BoundField DataField="list_CHA_mod" HeaderText="list_CHA_mod" SortExpression="list_CHA_mod" />
            <asp:BoundField DataField="list_Saving_Throws" HeaderText="list_Saving_Throws" SortExpression="list_Saving_Throws" />
            <asp:BoundField DataField="list_Skills" HeaderText="list_Skills" SortExpression="list_Skills" />
            <asp:BoundField DataField="list_Senses" HeaderText="list_Senses" SortExpression="list_Senses" />
            <asp:BoundField DataField="list_Languages" HeaderText="list_Languages" SortExpression="list_Languages" />
            <asp:BoundField DataField="list_Challenge" HeaderText="list_Challenge" SortExpression="list_Challenge" />
            <asp:BoundField DataField="list_Traits" HeaderText="list_Traits" SortExpression="list_Traits" />
            <asp:BoundField DataField="list_Actions" HeaderText="list_Actions" SortExpression="list_Actions" />
            <asp:BoundField DataField="list_Legendary_Actions" HeaderText="list_Legendary_Actions" SortExpression="list_Legendary_Actions" />
            <asp:BoundField DataField="list_img_url" HeaderText="list_img_url" SortExpression="list_img_url" />
            <asp:BoundField DataField="list_Damage_Immunities" HeaderText="list_Damage_Immunities" SortExpression="list_Damage_Immunities" />
            <asp:BoundField DataField="list_Condition_Immunities" HeaderText="list_Condition_Immunities" SortExpression="list_Condition_Immunities" />
            <asp:BoundField DataField="list_Damage_Resistances" HeaderText="list_Damage_Resistances" SortExpression="list_Damage_Resistances" />
            <asp:BoundField DataField="list_Damage_Vulnerabilities" HeaderText="list_Damage_Vulnerabilities" SortExpression="list_Damage_Vulnerabilities" />
            <asp:BoundField DataField="list_Reactions" HeaderText="list_Reactions" SortExpression="list_Reactions" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [srd_5e_monsters2] ORDER BY [list_name]"></asp:SqlDataSource>
    </asp:Content>

