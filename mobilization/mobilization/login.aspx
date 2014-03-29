<%@ Page Title="Login" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="login.aspx.vb" Inherits="mobilization.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
                <asp:Button ID="cmdadd" runat="server" Text="Login" />
&nbsp;&nbsp;
                <asp:Button ID="cmdclear" runat="server" Text="Clear" />
&nbsp;&nbsp;
                <asp:Button ID="cmdcancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
