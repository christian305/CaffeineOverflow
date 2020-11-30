<%@ Page Title="Home" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DnD_Companion.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Home page"></asp:Label>
    <asp:MultiView ID="MultiView1" runat="server">
    </asp:MultiView>

    <asp:ImageButton ID="ImageButton3" runat="server" Height="130px" ImageUrl="~\Dice.jpg" Width="131px" />
    <asp:ImageButton ID="ImageButton4" runat="server" Height="132px" Width="132px" />
    <asp:ImageButton ID="ImageButton5" runat="server" Height="129px" Width="130px" />
    <asp:ImageButton ID="ImageButton6" runat="server" Height="133px" Width="130px" />
    <asp:ImageButton ID="ImageButton7" runat="server" Height="131px" Width="127px" />

</asp:Content>
