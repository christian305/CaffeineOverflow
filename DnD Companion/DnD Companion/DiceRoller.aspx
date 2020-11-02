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
        .auto-style13 {
            width: 21px;
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
        }
        .auto-style31 {
            width: 194px;
            height: 23px;
        }
        .auto-style32 {
            width: 194px;
        }
        .auto-style33 {
            width: 194px;
            height: 26px;
        }
        .auto-style34 {
            width: 194px;
            height: 24px;
        }
        .auto-style35 {
            width: 166px;
            height: 50px;
        }
        .auto-style36 {
            width: 123px;
            height: 50px;
        }
        .auto-style37 {
            width: 194px;
            height: 50px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Dice Roller<table class="auto-style30">
        <tr>
            <td class="auto-style7">DICE</td>
            <td class="auto-style8">NBR</td>
            <td class="auto-style31">+ -</td>
            <td class="auto-style10">Modifier</td>
            <td class="auto-style11">Roll</td>
            <td class="auto-style25">Result</td>
            <td rowspan="9" class="auto-style29">
                <asp:TextBox ID="TextBox25" runat="server" Height="376px" Width="237px">These are the results: </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style35">Dice 4</td>
            <td class="auto-style36"><asp:TextBox ID="TextBox1" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
            <td class="auto-style37"><input id="radio1" name="radio1" value="Add1" type="radio"><input id="radio2" name="radio1" value="sub1" type="radio"></td>
            <td class="auto-style38"><asp:TextBox ID="TextBox9" runat="server"  onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" MaxLength="3"></asp:TextBox></td>
            <td class="auto-style39"><asp:Button ID="Button1" runat="server" Text="ROLL" OnClick="Button1_Click" /></td>
            <td class="auto-style40"><asp:TextBox ID="TextBox17" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="auto-style4">Dice 6</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" MaxLength="3"></asp:TextBox>

            </td>
            <td class="auto-style32">
               <input id="radio3" name="radio2" value="Add2" type="radio" class="auto-style13"><input id="radio4" name="radio2" value="sub2" type="radio"></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox10" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" MaxLength="3"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button2" runat="server" Text="ROLL" OnClick="Button2_Click"/>
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox18" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Dice&nbsp; 8</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <input id="radio5" name="radio3" value="Add3" type="radio"><input id="radio6" name="radio3" value="sub3" type="radio"></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox11" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);" MaxLength="3"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:Button ID="Button3" runat="server" Text="ROLL" OnClick="Button3_Click" />
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox19" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Dice 10</td>
            <td class="auto-style21">
                <asp:TextBox ID="TextBox4" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style33">
               <input id="radio7" name="radio4" value="Add4" type="radio"><input id="radio8" name="radio4" value="sub4" type="radio"></td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBox12" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:Button ID="Button4" runat="server" Text="ROLL" OnClick="Button4_Click" />
            </td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox20" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Dice 12</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox5" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style34">
               <input id="radio9" name="radio5" value="Add5" type="radio"><input id="radio10" name="radio5" value="sub5" type="radio"></td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox13" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:Button ID="Button5" runat="server" Text="ROLL" OnClick="Button5_Click" />
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="TextBox21" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Dice 20</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox6" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style32">
               <input id="radio11" name="radio6" value="Add6" type="radio"><input id="radio12" name="radio6" value="sub6" type="radio"></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox14" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button6" runat="server" Text="ROLL" OnClick="Button6_Click" />
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox22" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Dice 100</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox7" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style32">
                <input id="radio13" name="radio7" value="Add7" type="radio"><input id="radio14" name="radio7" value="sub7" type="radio"></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox15" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button7" runat="server" Text="ROLL" OnClick="Button7_Click" />
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox23" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox8" runat="server" BorderStyle="None" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style32">
                <input id="radio15" name="radio8" value="Add8" type="radio"><input id="radio16" name="radio8" value="sub8" type="radio"></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox16" runat="server" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button8" runat="server" Text="ROLL" OnClick="Button8_Click" />
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox24" runat="server" BorderStyle="None" ReadOnly="True" onkeydown = "return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106 || (event.keyCode >= 48 && event.keyCode <= 57 && isNaN(event.key))) && event.keyCode!=32);"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
