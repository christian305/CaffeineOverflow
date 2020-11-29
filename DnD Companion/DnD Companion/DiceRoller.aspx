<%@ Page Title="Dice Roller" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DiceRoller.aspx.cs" Inherits="DnD_Companion.DiceRoller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 128px;
        }
        .auto-style3 {
            width: 123px;
        }
        .auto-style4 {
            width: 166px;
        }
        .auto-style6 {
            width: 90px;
        }
        .auto-style7 {
            width: 166px;
            height: 23px;
        }
        .auto-style8 {
            width: 123px;
            height: 23px;
        }
        .auto-style10 {
            width: 128px;
            height: 23px;
        }
        .auto-style11 {
            width: 90px;
            height: 23px;
        }
        .auto-style14 {
            width: 166px;
            height: 24px;
        }
        .auto-style15 {
            width: 123px;
            height: 24px;
        }
        .auto-style17 {
            width: 128px;
            height: 24px;
        }
        .auto-style18 {
            width: 90px;
            height: 24px;
        }
        .auto-style20 {
            width: 166px;
            height: 26px;
        }
        .auto-style21 {
            width: 123px;
            height: 26px;
        }  
        .auto-style23 {
            width: 128px;
            height: 26px;
        }
        .auto-style24 {
            width: 90px;
            height: 26px;
        }
        .auto-style25 {
            width: 129px;
            height: 23px;
        }
        .auto-style26 {
            width: 129px;
        }
        .auto-style27 {
            width: 129px;
            height: 26px;
        }
        .auto-style28 {
            width: 129px;
            height: 24px;
        }
        .auto-style29 {
            width: 659px;
        }
        .auto-style30 {
            width: 70%;
            height: 508px;
        }
        .auto-style35 {
            width: 166px;
            height: 50px;
        }
        .auto-style36 {
            width: 123px;
            height: 50px;
            margin-left: 40px;
        }
        .auto-style38 {
            width: 128px;
            height: 50px;
        }
        .auto-style39 {
            width: 90px;
            height: 50px;
        }
        .auto-style40 {
            width: 129px;
            height: 50px;
        }
        .auto-style41 {
            width: 123px;
            height: 50px;
        }
        .auto-style42 {
            width: 73px;
            height: 23px;
        }
        .auto-style43 {
            width: 73px;
            height: 50px;
        }
        .auto-style44 {
            width: 73px;
        }
        .auto-style45 {
            width: 73px;
            height: 26px;
        }
        .auto-style46 {
            width: 73px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Dice Roller<table class="auto-style30">
        <tr>
            <td class="auto-style7" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF0000;">DICE</td>
            <td class="auto-style8" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FFFF00;">NBR</td>
            <td class="auto-style42" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF00FF;">+ -</td>
            <td class="auto-style10" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #00FFFF;">Modifier</td>
            <td class="auto-style11" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF0000;">Roll</td>
            <td class="auto-style25" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FFFFFF;">Result</td>
            <td rowspan="8" class="auto-style29">
                <asp:TextBox ID="TextBox25" runat="server" Height="305px" Width="237px" TextMode="MultiLine">These are the results: </asp:TextBox>
                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="reset" Width="242px" />
                <asp:TextBox ID="TextBox28" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox29" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style35" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF0000;">d4</td>
            <td class="auto-style36"><asp:TextBox ID="TextBox1" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" OnTextChanged="TextBox1_TextChanged" BorderStyle="None" Width="90px"></asp:TextBox></td>
            <td class="auto-style43">
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="1" />
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="1" />
            </td>
            <td class="auto-style38"><asp:TextBox ID="TextBox9" runat="server"  onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" MaxLength="3" BorderStyle="None" Width="90px"></asp:TextBox></td>
            <td class="auto-style39"><asp:Button ID="Button1" runat="server" Text="ROLL" OnClick="Button1_Click" Width="70px" /></td>
            <td class="auto-style40"><asp:TextBox ID="TextBox17" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" Width="90px"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style4" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF0000;">d6</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" MaxLength="3" BorderStyle="None" Width="90px"></asp:TextBox>

            </td>
            <td class="auto-style44">
                <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" GroupName="2" />
                <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" GroupName="2" />
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox10" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" MaxLength="3" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button2" runat="server" Text="ROLL" OnClick="Button2_Click" Width="70px"/>
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox18" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" Width="90px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF0000;">d8</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style42">
                <asp:RadioButton ID="RadioButton5" runat="server" AutoPostBack="True" GroupName="3" />
                <asp:RadioButton ID="RadioButton6" runat="server" AutoPostBack="True" GroupName="3" />
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox11" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" MaxLength="3" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:Button ID="Button3" runat="server" Text="ROLL" OnClick="Button3_Click" Width="70px" />
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox19" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" Width="90px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF0000;">d10</td>
            <td class="auto-style21">
                <asp:TextBox ID="TextBox4" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style45">
                <asp:RadioButton ID="RadioButton7" runat="server" AutoPostBack="True" GroupName="4" />
                <asp:RadioButton ID="RadioButton8" runat="server" AutoPostBack="True" GroupName="4" />
            </td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBox12" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:Button ID="Button4" runat="server" Text="ROLL" OnClick="Button4_Click" Width="70px" />
            </td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox20" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" Width="90px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF0000;">d12</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox5" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style46">
                <asp:RadioButton ID="RadioButton9" runat="server" AutoPostBack="True" GroupName="5" />
                <asp:RadioButton ID="RadioButton10" runat="server" AutoPostBack="True" GroupName="5" />
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox13" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:Button ID="Button5" runat="server" Text="ROLL" OnClick="Button5_Click" Width="70px" />
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="TextBox21" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" Width="90px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style35" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF0000;">d20</td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox6" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style43">
                <asp:RadioButton ID="RadioButton11" runat="server" AutoPostBack="True" GroupName="6" />
                <asp:RadioButton ID="RadioButton12" runat="server" AutoPostBack="True" GroupName="6" />
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="TextBox14" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:Button ID="Button6" runat="server" Text="ROLL" OnClick="Button6_Click" Width="70px" />
            </td>
            <td class="auto-style40">
                <asp:TextBox ID="TextBox22" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" Width="90px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: 19px; font-weight: bold; font-style: italic; text-transform: none; color: #FF0000;">d100</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox7" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style44">
                <asp:RadioButton ID="RadioButton13" runat="server" AutoPostBack="True" GroupName="7" />
                <asp:RadioButton ID="RadioButton14" runat="server" AutoPostBack="True" GroupName="7" />
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox15" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" BorderStyle="None" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button7" runat="server" Text="ROLL" OnClick="Button7_Click" Width="70px" />
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox23" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" Width="90px"></asp:TextBox>
            </td>
        </tr>
        </table>

    <div>
    <!-- #include file="C:\Users\guzma\Documents\GitHub\CaffeineOverflow\DnD Companion\DnD Companion\index.html" -->
    </div>
</asp:Content>
