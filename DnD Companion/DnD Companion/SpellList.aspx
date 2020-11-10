<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SpellList.aspx.cs" Inherits="DnD_Companion.SpellList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            width: 598px;
        }
        .auto-style4 {
            height: 31px;
            width: 194px;
        }
        .auto-style7 {
            height: 32px;
            width: 194px;
        }
        .auto-style8 {
            width: 1195px;
            margin-right: 0px;
            height: 993px;
        }
        .auto-style10 {
            height: 34px;
            width: 194px;
        }
        .auto-style13 {
            width: 194px;
        }
        .auto-style14 {
            font-weight: bold;
            width: 194px;
        }
        .auto-style15 {
            width: 1245px;
            height: 1215px;
        }
        .auto-style16 {
            width: 663px;
        }
        .auto-style17 {
            width: 663px;
            height: 32px;
        }
        .auto-style18 {
            width: 194px;
            height: 4px;
        }
        .auto-style19 {
            width: 663px;
            height: 4px;
        }
        .auto-style20 {
            width: 194px;
            height: 225px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <br />
    </p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="auto-style15">
    &nbsp;<table class="auto-style8">
        <tr>
            <td aria-multiline="False" aria-sort="none" class="auto-style13" colspan="1" draggable="true" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Name</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="name_lbl" runat="server"></asp:Label>
            </td> 
            
            <td class="auto-style2" style="border-style: double double none double; background-color: #C0C0C0; font-style: italic; font-weight: 700;" aria-orientation="horizontal" dir="ltr" draggable="true" rowspan="18">
                <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" CssClass="mt-0" DataSourceID="SqlDataSource1" DataTextField="list_name" DataValueField="list_name" Height="711px" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" Width="254px" ForeColor="Black"></asp:ListBox> 
            </td> 
            
        </tr>
        
        <tr>
            <td class="auto-style4" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">
                Page</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="page_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Range</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="range_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Components</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="components_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Materials</td>
            <td class="auto-style17" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="material_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Ritual</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="ritual_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Duration</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="duration_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Concentration</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="concentration_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Casting Time</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="casting_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Level</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="level_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="border-style: double; background-color: #999999; font-size: larger; font-weight: bold; text-decoration: underline;">School</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="school_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Class</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="class_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Archetype</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="archetype_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Circles</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="circles_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Domains</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="domains_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Oaths</td>
            <td class="auto-style19" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="oaths_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Patrons</td>
            <td class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="patrons_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Higher</td>
            <td id="higher_txt" class="auto-style16" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;">
                <asp:Label ID="higher_lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="border-style: double double none double; font-weight: bold; background-color: #999999; font-size: larger; text-decoration: underline;">Description</td>
            <td rowspan="9" style="border-style: double; background-color: #C0C0C0; font-style: italic; font-weight: 700;" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                &nbsp; 
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="border-left-style: double; background-color: #999999;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-left-style: double; background-color: #999999;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-left-style: double; background-color: #999999;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-left-style: double; background-color: #999999;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-left-style: double; background-color: #999999;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20" style="border-left-style: double; border-bottom-style: double; background-color: #999999;"></td>
        </tr>
    </table>
    

    </div>

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnLoad="GridView1_Load" Visible="False">
        <Columns>
            <asp:BoundField DataField="list_name" HeaderText="list_name" SortExpression="list_name"></asp:BoundField>
            <asp:BoundField DataField="list_desc" HeaderText="list_desc" SortExpression="list_desc"></asp:BoundField>
            <asp:BoundField DataField="list_higher_level" HeaderText="list_higher_level" SortExpression="list_higher_level"></asp:BoundField>
            <asp:BoundField DataField="list_page" HeaderText="list_page" SortExpression="list_page"></asp:BoundField>
            <asp:BoundField DataField="list_range" HeaderText="list_range" SortExpression="list_range"></asp:BoundField>
            <asp:BoundField DataField="list_components" HeaderText="list_components" SortExpression="list_components"></asp:BoundField>
            <asp:BoundField DataField="list_material" HeaderText="list_material" SortExpression="list_material"></asp:BoundField>
            <asp:BoundField DataField="list_ritual" HeaderText="list_ritual" SortExpression="list_ritual"></asp:BoundField>
            <asp:BoundField DataField="list_duration" HeaderText="list_duration" SortExpression="list_duration"></asp:BoundField>
            <asp:BoundField DataField="list_concentration" HeaderText="list_concentration" SortExpression="list_concentration"></asp:BoundField>
            <asp:BoundField DataField="list_casting_time" HeaderText="list_casting_time" SortExpression="list_casting_time"></asp:BoundField>
            <asp:BoundField DataField="list_level" HeaderText="list_level" SortExpression="list_level"></asp:BoundField>
            <asp:BoundField DataField="list_school" HeaderText="list_school" SortExpression="list_school"></asp:BoundField>
            <asp:BoundField DataField="list_class" HeaderText="list_class" SortExpression="list_class"></asp:BoundField>
            <asp:BoundField DataField="list_archetype" HeaderText="list_archetype" SortExpression="list_archetype"></asp:BoundField>
            <asp:BoundField DataField="list_circles" HeaderText="list_circles" SortExpression="list_circles"></asp:BoundField>
            <asp:BoundField DataField="list_domains" HeaderText="list_domains" SortExpression="list_domains"></asp:BoundField>
            <asp:BoundField DataField="list_oaths" HeaderText="list_oaths" SortExpression="list_oaths"></asp:BoundField>
            <asp:BoundField DataField="list_patrons" HeaderText="list_patrons" SortExpression="list_patrons"></asp:BoundField>
            <asp:BoundField DataField="list_license" HeaderText="list_license" SortExpression="list_license"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [everything_spells] ORDER BY [list_name]"></asp:SqlDataSource>
</asp:Content>

