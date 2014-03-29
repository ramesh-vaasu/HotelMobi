<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style10
    {
        width: 338px;
        height: 39px;
    }
    .style11
    {
        width: 45px;
        height: 39px;
    }
    .style12
    {
        width: 5px;
        height: 39px;
    }
    .style13
    {
        width: 516px;
        height: 39px;
    }
    .style14
    {
        width: 338px;
        height: 18px;
    }
    .style15
    {
        width: 45px;
        height: 18px;
    }
    .style16
    {
        width: 5px;
        height: 18px;
    }
    .style17
    {
        width: 516px;
        height: 18px;
    }
    .style18
    {
        width: 338px;
        height: 32px;
    }
    .style19
    {
        width: 45px;
        height: 32px;
    }
    .style20
    {
        width: 5px;
        height: 32px;
    }
    .style21
    {
        width: 516px;
        height: 32px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<table class="style5">
        <tr>
            <td class="style10">
                Select the Category</td>
            <td class="style11">
                </td>
            <td class="style12">
                </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style14">
                </td>
            <td class="style15">
                </td>
            <td class="style16">
                </td>
            <td class="style17">
                </td>
        </tr>
        <tr>
            <td class="style18">
                </td>
            <td align="right" class="style19" 
                style="color: #000000; text-align: right; font-weight: bold">
                Category</td>
            <td class="style20">
                </td>
            <td class="style21">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select any One</asp:ListItem>
                    <asp:ListItem>Indian</asp:ListItem>
                    <asp:ListItem>Chinies</asp:ListItem>
                    <asp:ListItem>Pakistani</asp:ListItem>
                    <asp:ListItem>Sri Lankan</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
</asp:Content>

