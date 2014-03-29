<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegForm.aspx.cs" Inherits="RegForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 70px;
        }
        .style10
        {
            width: 146px;
        }
        .style11
        {
            width: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<table class="style8">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Name</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Password</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Cofirm Password</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Type of User</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select any One</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Chef</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Education Qualification</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Country</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Marital Staus</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:RadioButton ID="Single" GroupName="Status" Text="Single" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="Maried" GroupName="Status" Text="Maried" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Age</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Sex</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:RadioButton ID="Male" GroupName="Sex"  Text="Male" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="Female" GroupName="Sex" Text="Female" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="signup" runat="server"  allign="right" Text="Sign Up" />
            </td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:Button ID="cancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

