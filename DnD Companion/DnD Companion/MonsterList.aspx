<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MonsterList.aspx.cs" Inherits="DnD_Companion.MonsterList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 160px;
        }
        .auto-style3 {
            margin-left: 240px;
            width: 155px;
            height: 34px;
        }
        .auto-style4 {
            margin-left: 240px;
            width: 82px;
            height: 34px;
        }
        .auto-style8 {
            width: 1360px;
            height: 996px;
        }
        .auto-style15 {
            width: 82px;
            height: 22px;
        }
        .auto-style16 {
            height: 22px;
        }
        .auto-style17 {
            width: 801px;
            height: 22px;
        }
        .auto-style22 {
            width: 82px;
            height: 62px;
        }
        .auto-style23 {
            width: 155px;
            height: 62px;
        }
        .auto-style24 {
            width: 192px;
            height: 62px;
        }
        .auto-style25 {
            width: 255px;
            height: 62px;
        }
        .auto-style26 {
            width: 82px;
            height: 34px;
        }
        .auto-style27 {
            width: 155px;
            height: 34px;
        }
        .auto-style28 {
            width: 82px;
            height: 35px;
        }
        .auto-style29 {
            width: 155px;
            height: 35px;
        }
        .auto-style30 {
            height: 22px;
            width: 255px;
        }
        .auto-style31 {
            width: 192px;
        }
        .auto-style32 {
            width: 82px;
            height: 191px;
        }
        .auto-style33 {
            height: 191px;
        }
        .auto-style34 {
            height: 191px;
            width: 255px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Monster_list" DataTextField="list_name" DataValueField="list_name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;<br />
    </p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
        <asp:Image ID="Image1" runat="server" Height="100px" />
    <br />
    <br />
    <br />
    <table class="auto-style8">
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style32" colspan="1" draggable="true" style="font-weight: bold">Name</td>
            <td class="auto-style33" style="border-style: none">
                <asp:Label ID="name_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style33">
            </td>
            <td class="auto-style34" style="font-weight: bold">
                Actions</td>
            <td class="auto-style33">
                <asp:Label ID="action_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style15" colspan="1" draggable="true" rowspan="1" style="font-weight: bold">Meta</td>
            <td class="auto-style16" style="border-style: none">
                <asp:Label ID="meta_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style30" style="font-weight: bold">
                Legendary Actions</td>
            <td class="auto-style17">
                <asp:Label ID="legendary_lbl" runat="server" BorderStyle="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-weight: bold">
                Armor Class</td>
            <td class="auto-style3" style="border-style: none">
                <asp:Label ID="armor_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style31"></td>
            <td style="font-weight: bold">Damage Immunities</td>
            <td>
                <asp:Label ID="damage_im_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Hit Points</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="hit_points_lbl" runat="server"></asp:Label>
            </td>
            <td></td>
            <td style="font-weight: bold">Condition Immunities</td>
            <td>
                <asp:Label ID="condition_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Speed</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="speed_lbl" runat="server"></asp:Label>
            </td>
            <td></td>
            <td style="font-weight: bold">Damage Resistances</td>
            <td>
                <asp:Label ID="damage_resist_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Strength</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="str_lbl" runat="server"></asp:Label>
            </td>
            <td></td>
            <td style="font-weight: bold">Damage Vulnerabilities</td>
            <td>
                <asp:Label ID="damage_vul_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Strength mod</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="str_mob_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Dex</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="dex_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Dex mod</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="dex_mob_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Con</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="con_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Con mod</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="con_mob_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Intellect</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="intellect_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Intellect mod</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="intellect_mob_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-weight: bold">Wisdom</td>
            <td class="auto-style27" style="border-style: none">
                <asp:Label ID="wisdom_lbl" runat="server"></asp:Label>
                <asp:TextBox ID="wis_txt" runat="server" BorderStyle="None" ReadOnly="True" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="font-weight: bold">Wisdom mob</td>
            <td class="auto-style29" style="border-style: none">
                <asp:Label ID="wisdom_mob_lbl" runat="server"></asp:Label>
                <asp:TextBox ID="wis_mob_txt" runat="server" BorderStyle="None" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="font-weight: bold">Charisma</td>
            <td class="auto-style29" style="border-style: none">
                <asp:Label ID="charisma_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="font-weight: bold">Charisma mob</td>
            <td class="auto-style29" style="border-style: none">
                <asp:Label ID="charisma_mob_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" style="font-weight: bold">Saving Throws</td>
            <td class="auto-style29" style="border-style: none">
                <asp:Label ID="saving_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-weight: bold">Skills</td>
            <td id="skills_txt" class="auto-style23" style="border-style: none">
                <asp:Label ID="skills_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-weight: bold">Senses</td>
            <td class="auto-style23" style="border-style: none">
                <asp:Label ID="senses_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-weight: bold">Languages</td>
            <td class="auto-style23" style="border-style: none">
                <asp:Label ID="language_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-weight: bold">Challenge</td>
            <td class="auto-style23" style="border-style: none">
                <asp:Label ID="challenge_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-weight: bold">Traits</td>
            <td class="auto-style23" style="border-style: none">
                <asp:Label ID="traits_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-weight: bold">Reactions</td>
            <td class="auto-style23" style="border-style: none">
                <asp:Label ID="reactions_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;<asp:SqlDataSource ID="Monster_list" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [srd_5e_monsters] ORDER BY [list_name]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Monster_list" Visible="False"  >
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
    </asp:Content>