<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MonsterList.aspx.cs" Inherits="DnD_Companion.MonsterList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 240px;
            width: 149px;
            height: 3px;
        }
        .auto-style8 {
            width: 1132px;
            height: 556px;
            margin-right: 0px;
        }
        .auto-style42 {
            width: 1131px;
            height: 289px;
        }
        .auto-style66 {
            width: 149px;
            height: 5px;
        }
        .auto-style88 {
            width: 177px;
            height: 3px;
        }
        .auto-style89 {
            height: 3px;
        }
        .auto-style98 {
            margin-left: 240px;
            width: 319px;
            height: 3px;
        }
        .auto-style132 {
            width: 149px;
            height: 14px;
        }
        .auto-style139 {
            width: 149px;
            height: 8px;
        }
        .auto-style141 {
            width: 149px;
            height: 11px;
        }
        .auto-style142 {
            width: 149px;
            height: 19px;
        }
        .auto-style143 {
            height: 25px;
        }
        .auto-style148 {
            width: 149px;
            height: 10px;
        }
        .auto-style149 {
            width: 149px;
            height: 12px;
        }
        .auto-style156 {
            width: 177px;
            height: 28px;
        }
        .auto-style157 {
            height: 28px;
        }
        .auto-style159 {
            width: 177px;
            height: 24px;
        }
        .auto-style160 {
            height: 24px;
        }
        .auto-style171 {
            width: 177px;
            height: 25px;
        }
        .auto-style172 {
            width: 319px;
            height: 1px;
        }
        .auto-style174 {
            width: 319px;
            height: 12px;
        }
        .auto-style175 {
            width: 319px;
            height: 5px;
        }
        .auto-style176 {
            width: 149px;
            height: 1px;
        }
        .auto-style178 {
            width: 149px;
            height: 4px;
        }
        .auto-style179 {
            width: 319px;
            height: 4px;
        }
        .auto-style181 {
            width: 149px;
            height: 2px;
        }
        .auto-style182 {
            width: 319px;
            height: 2px;
        }
        .auto-style183 {
            width: 149px;
            height: 25px;
        }
        .auto-style184 {
            width: 130px;
        }
        .auto-style192 {
            width: 319px;
            height: 14px;
        }
        .auto-style193 {
            height: 8px;
            width: 319px;
        }
        .auto-style194 {
            width: 319px;
            height: 10px;
        }
        .auto-style195 {
            width: 319px;
            height: 11px;
        }
        .auto-style196 {
            height: 19px;
            width: 319px;
        }
        .auto-style197 {
            height: 25px;
            width: 319px;
        }
        .auto-style198 {
            width: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <table class="auto-style8">
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style176" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Name</td>
            <td class="auto-style172" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;" aria-orientation="horizontal">
                <asp:Label ID="name_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style198" aria-multiline="True" style="background-color: #C0C0C0; border-top-style: double; border-bottom-style: double;" draggable="true" rowspan="17">
        <asp:Image ID="Image1" runat="server" Height="202px" Width="238px" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style184" aria-multiline="True" style="background-color: #C0C0C0; border-top-style: double; border-right-style: double; border-bottom-style: double;" rowspan="17">
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" CssClass="offset-sm-0" DataSourceID="SqlDataSource1" DataTextField="list_name" DataValueField="list_name" Height="394px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="230px"></asp:ListBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style176" colspan="1" draggable="true" rowspan="1" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Meta</td>
            <td class="auto-style172" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="meta_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style178" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Reactions</td>
            <td class="auto-style179" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="reactions_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style181" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">HP</td>
            <td class="auto-style182" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="hit_points_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style149" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Con</td>
            <td class="auto-style174" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="con_lbl" runat="server" BorderStyle="None"></asp:Label>
                <asp:Label ID="con_mob_lbl" runat="server" BorderStyle="None" ToolTip="Con Mod"></asp:Label>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style149" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Intellect</td>
            <td class="auto-style174" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="intellect_lbl" runat="server" BorderStyle="None"></asp:Label>
                <asp:Label ID="intellect_mob_lbl" runat="server" BorderStyle="None" ToolTip="Intellect Mod"></asp:Label>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style149" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Wisdom</td>
            <td class="auto-style174" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="wisdom_lbl" runat="server" BorderStyle="None"></asp:Label>
                <asp:Label ID="wisdom_mob_lbl" runat="server" BorderStyle="None" ToolTip="Wisdom Mod"></asp:Label>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style149" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Dex</td>
            <td class="auto-style174" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="dex_lbl" runat="server" BorderStyle="None"></asp:Label>
                <asp:Label ID="dex_mob_lbl" runat="server" BorderStyle="None" ToolTip="Dex Mod"></asp:Label>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style149" colspan="1" draggable="true" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Charisma</td>
            <td class="auto-style174" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="charisma_lbl" runat="server"></asp:Label>
                <asp:Label ID="charisma_mob_lbl" runat="server" ToolTip="Charisma Mod"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">
                Armor </td>
            <td class="auto-style98" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="armor_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style66" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Speed</td>
            <td class="auto-style175" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="speed_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style132" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Strength</td>
            <td class="auto-style192" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="str_lbl" runat="server"></asp:Label>
                <asp:Label ID="str_mob_lbl" runat="server" ToolTip="Str Mod"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style139" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Saving Throws</td>
            <td class="auto-style193" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="saving_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style148" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Senses</td>
            <td class="auto-style194" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="senses_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style141" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Skills</td>
            <td id="skills_txt" class="auto-style195" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="skills_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style142" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Languages</td>
            <td class="auto-style196" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="language_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style183" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Challenge</td>
            <td class="auto-style197" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="challenge_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
    <table class="auto-style42">
        <tr>
            <td class="auto-style156" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;">Actions</td>
            <td class="auto-style157" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="action_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style156" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;" aria-multiline="False">Legendary Actions</td>
            <td class="auto-style157" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="legendary_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style171" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;" aria-multiline="False">Traits</td>
            <td class="auto-style143" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="traits_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style159" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;" aria-multiline="False">Damage Immunities</td>
            <td class="auto-style160" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="damage_im_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style156" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;" aria-multiline="False">Condition Immunities</td>
            <td class="auto-style157" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="condition_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style171" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;" aria-multiline="False">Damage Resistances</td>
            <td class="auto-style143" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
                <asp:Label ID="damage_resist_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style88" style="border-style: double; font-weight: bold; text-decoration: underline; font-size: small; background-color: #999999;" aria-multiline="False">Damage Vulnerabilities </td>
            <td class="auto-style89" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700; font-size: small;">
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

