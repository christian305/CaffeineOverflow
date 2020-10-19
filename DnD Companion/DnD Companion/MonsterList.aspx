<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MonsterList.aspx.cs" Inherits="DnD_Companion.MonsterList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Monster_list">
        <Columns>
            <asp:BoundField DataField="list_name" HeaderText="list_name" ReadOnly="True" SortExpression="list_name" />
            <asp:BoundField DataField="list_meta" HeaderText="list_meta" SortExpression="list_meta" Visible="False" />
            <asp:BoundField DataField="list_Armor_Class" HeaderText="list_Armor_Class" SortExpression="list_Armor_Class" Visible="False" />
            <asp:BoundField DataField="list_Hit_Points" HeaderText="list_Hit_Points" SortExpression="list_Hit_Points" Visible="False" />
            <asp:BoundField DataField="list_Speed" HeaderText="list_Speed" SortExpression="list_Speed" Visible="False" />
            <asp:BoundField DataField="list_STR" HeaderText="list_STR" SortExpression="list_STR" Visible="False" />
            <asp:BoundField DataField="list_STR_mod" HeaderText="list_STR_mod" SortExpression="list_STR_mod" Visible="False" />
            <asp:BoundField DataField="list_DEX" HeaderText="list_DEX" SortExpression="list_DEX" Visible="False" />
            <asp:BoundField DataField="list_DEX_mod" HeaderText="list_DEX_mod" SortExpression="list_DEX_mod" Visible="False" />
            <asp:BoundField DataField="list_CON" HeaderText="list_CON" SortExpression="list_CON" Visible="False" />
            <asp:BoundField DataField="list_CON_mod" HeaderText="list_CON_mod" SortExpression="list_CON_mod" Visible="False" />
            <asp:BoundField DataField="list_INT" HeaderText="list_INT" SortExpression="list_INT" Visible="False" />
            <asp:BoundField DataField="list_INT_mod" HeaderText="list_INT_mod" SortExpression="list_INT_mod" Visible="False" />
            <asp:BoundField DataField="list_WIS" HeaderText="list_WIS" SortExpression="list_WIS" Visible="False" />
            <asp:BoundField DataField="list_WIS_mod" HeaderText="list_WIS_mod" SortExpression="list_WIS_mod" Visible="False" />
            <asp:BoundField DataField="list_CHA" HeaderText="list_CHA" SortExpression="list_CHA" Visible="False" />
            <asp:BoundField DataField="list_CHA_mod" HeaderText="list_CHA_mod" SortExpression="list_CHA_mod" Visible="False" />
            <asp:BoundField DataField="list_Saving_Throws" HeaderText="list_Saving_Throws" SortExpression="list_Saving_Throws" Visible="False" />
            <asp:BoundField DataField="list_Skills" HeaderText="list_Skills" SortExpression="list_Skills" Visible="False" />
            <asp:BoundField DataField="list_Senses" HeaderText="list_Senses" SortExpression="list_Senses" Visible="False" />
            <asp:BoundField DataField="list_Languages" HeaderText="list_Languages" SortExpression="list_Languages" Visible="False" />
            <asp:BoundField DataField="list_Challenge" HeaderText="list_Challenge" SortExpression="list_Challenge" Visible="False" />
            <asp:BoundField DataField="list_Traits" HeaderText="list_Traits" SortExpression="list_Traits" Visible="False" />
            <asp:BoundField DataField="list_Actions" HeaderText="list_Actions" SortExpression="list_Actions" Visible="False" />
            <asp:BoundField DataField="list_Legendary_Actions" HeaderText="list_Legendary_Actions" SortExpression="list_Legendary_Actions" Visible="False" />
            <asp:BoundField DataField="list_img_url" HeaderText="list_img_url" SortExpression="list_img_url" Visible="False" />
            <asp:BoundField DataField="list_Damage_Immunities" HeaderText="list_Damage_Immunities" SortExpression="list_Damage_Immunities" Visible="False" />
            <asp:BoundField DataField="list_Condition_Immunities" HeaderText="list_Condition_Immunities" SortExpression="list_Condition_Immunities" Visible="False" />
            <asp:BoundField DataField="list_Damage_Resistances" HeaderText="list_Damage_Resistances" SortExpression="list_Damage_Resistances" Visible="False" />
            <asp:BoundField DataField="list_Damage_Vulnerabilities" HeaderText="list_Damage_Vulnerabilities" SortExpression="list_Damage_Vulnerabilities" Visible="False" />
            <asp:BoundField DataField="list_Reactions" HeaderText="list_Reactions" SortExpression="list_Reactions" Visible="False" />
            <asp:ImageField DataImageUrlField="list_img_url" Visible="False">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:Table ID="Table1" runat="server">
    </asp:Table>
    <asp:SqlDataSource ID="Monster_list" runat="server" ConnectionString="<%$ ConnectionStrings:monster_testConnectionString %>" SelectCommand="SELECT * FROM [srd_5e_monsters] ORDER BY [list_name]"></asp:SqlDataSource>
    <p>
        <asp:Image ID="Image1" runat="server" />
    </p>
    <p>
    </p>
</asp:Content>