<%@ Page Title="Chef Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ChefLogin.aspx.cs" Inherits="ChefLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
            height: 21px;
        }
        .style8
        {
            height: 21px;
            width: 2%;
        }
        .style10
        {
            height: 21px;
            width: 41%;
        }
    .style11
    {
        height: 38px;
    }
    .style12
    {
        width: 516px;
        height: 38px;
    }
    .style14
    {
        width: 516px;
        height: 16px;
    }
    .style15
    {
        height: 16px;
        width: 41%;
    }
    .style16
    {
        height: 16px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<table class="style5">
        <tr>
            <td class="style11">
                Login Page</td>
            <td class="style12">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style8">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style10" 
                style="font-weight: bold; color: #000000; text-align: right">
                User Name</td>
            <td class="style8" 
                style="font-weight: bold; color: #000000; text-align: right">
                &nbsp;</td>
            <td class="style6">
                <asp:TextBox ID="txtuser" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10" 
                style="font-weight: bold; color: #000000; text-align: right">
                Password</td>
            <td class="style8" 
                style="font-weight: bold; color: #000000; text-align: right">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                </td>
            <td class="style14">
                </td>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

