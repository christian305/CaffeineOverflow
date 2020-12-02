<%@ Page Title="Items" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ItemList.aspx.cs" Inherits="DnD_Companion.ItemList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 231px;
            height: 33px;
        }
        .auto-style3 {
            width: 177px;
            height: 33px;
        }
        .auto-style5 {
            height: 9px;
            width: 532px;
        }
        .auto-style6 {
            height: 45px;
            width: 910px;
        }
        .auto-style7 {
            height: 27px;
            width: 909px;
        }
        .auto-style8 {
            width: 210px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False" OnLoad="GridView1_Load">
    <Columns>
        <asp:BoundField DataField="Magic_Items_key" HeaderText="Magic_Items_key" SortExpression="Magic_Items_key" />
        <asp:BoundField DataField="Magic_Items_form" HeaderText="Magic_Items_form" SortExpression="Magic_Items_form" />
        <asp:BoundField DataField="Magic_Items_properties" HeaderText="Magic_Items_properties" SortExpression="Magic_Items_properties" />
    </Columns>
</asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <table class="auto-style6">
        <tr>
            <td class="auto-style3 " style="border-style: double; font-weight: 700; background-color: #999999; font-size: medium; ">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td rowspan="1" style="border-style: double; background-color: #999999; font-weight: 700; font-size: medium;" class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                &nbsp; 
                </td>
            <td rowspan="1" style="border-style: double; background-color: #999999; font-weight: 700; font-size: medium;" class="auto-style1">
                &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Magic_Items_key" DataValueField="Magic_Items_key" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
                </td>
        </tr>
        </table>
    

    <table class="auto-style7">
        <tr>
            <td class="auto-style5" style="border-style: none double double double; background-color: #C0C0C0;">
    

    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        </table>
    

    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl="~/ItemCreate.aspx" Text="Create Item" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:items__ %>" SelectCommand="SELECT * FROM [magic_items] ORDER BY [Magic_Items_key]"></asp:SqlDataSource>
    </asp:Content>

