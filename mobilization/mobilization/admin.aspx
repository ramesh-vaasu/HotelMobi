<%@ Page Title="Add Item" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="admin.aspx.vb" Inherits="mobilization.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
        }
        .style8
        {
            width: 202px;
        }
        .style9
        {
            width: 279px;
        }
        .style10
        {
        }
        .style11
        {
            width: 379px;
            height: 36px;
        }
        .style13
        {
            width: 202px;
            height: 36px;
        }
        .style14
        {
            width: 279px;
            height: 36px;
        }
        .style17
        {
            width: 202px;
            height: 34px;
        }
        .style18
        {
            width: 279px;
            height: 34px;
        }
        .style20
        {
            width: 202px;
            height: 35px;
        }
        .style21
        {
            width: 279px;
            height: 35px;
        }
        .style22
        {
            width: 379px;
            height: 35px;
        }
        .style23
        {
            width: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Welcome to Admin Login</p>
    <table align="center" class="style5">
        <tr>
            <td class="style11" 
                style="color: #000000; text-align: right; font-weight: bold;" 
                align="right" height="35px">
                &nbsp;&nbsp;&nbsp;
                Name of the dish</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                </td>
            <td class="style17">
                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style18">
                </td>
        </tr>
        <tr>
            <td class="style11" 
                style="color: #000000; text-align: right; font-weight: bold;">
                Description</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                </td>
            <td class="style13">
                <asp:TextBox ID="txtDescription" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style11" 
                style="color: #000000; text-align: right; font-weight: bold;">
                Ingredients</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                </td>
            <td class="style20">
                <asp:TextBox ID="txtIngredients" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style21">
                </td>
        </tr>
        <tr>
            <td class="style11" 
                style="color: #000000; text-align: right; font-weight: bold;">
                Category</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                </td>
            <td class="style13">
                <asp:TextBox ID="txtCategory" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:Button ID="Button1" runat="server" Text="+" />
            </td>
        </tr>
        <tr>
            <td class="style11" 
                style="color: #000000; text-align: right; font-weight: bold;">
                Sub Category</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                </td>
            <td class="style13">
                <asp:TextBox ID="txtSubCategory" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style11" 
                style="color: #000000; text-align: right; font-weight: bold;">
                Price</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                </td>
            <td class="style13">
                <asp:TextBox ID="txtPrice" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style22" 
                style="color: #000000; text-align: right; font-weight: bold;">
                Time Taken</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                </td>
            <td class="style20" 
                
                style="font-weight: bold; color: #000000; text-align: left; vertical-align: middle">
                <asp:TextBox ID="txtTimeTaken" runat="server" Width="65px"></asp:TextBox>
            &nbsp;Min
                <asp:TextBox ID="TextBox8" runat="server" Width="65px"></asp:TextBox>
&nbsp;Sec</td>
            <td class="style21">
                </td>
        </tr>
        <tr>
            <td class="style10" 
                style="color: #000000; text-align: right; font-weight: bold;" 
                height="35px">
                &nbsp;</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" 
                style="color: #000000; text-align: center; font-weight: bold;" 
                align="center" colspan="4" height="35px">
                &nbsp;
                <asp:Button ID="cmdAdd" runat="server" Text="Add" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td align="left" class="style6" colspan="4" 
                style="color: #000000; text-align: center; font-weight: bold;" 
                width="50px">
&nbsp;
                &nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>
