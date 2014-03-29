<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<style type="text/css">
        .style14
        {
            width: 127px;
        }
        .style15
        {
            width: 127px;
            font-weight: 700;
        }
        .style16
        {
            width: 114px;
            font-weight: 700;
        }
        .style17
        {
            width: 219px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h2>
        Menu Page </h2>
    <br />
   <table align="center" class="style5">
         <tr>
            <td class="style17" 
                style="color: #000000; text-align: center; font-weight: bold;" 
                align="right" height="40px">
                Name of the Dish</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;" 
                height="40px">
                </td>
            <td class="style14" 
                style="color: #000000; text-align: center; font-weight: bold;" 
                align="right" height="40px">
                <strong>Price in Rupees (₹)</td>
            <td class="style16" style="text-align: center; height="40px">
                Time in Minutes</td>
        </tr>
        <tr>
            <td class="style17" 
                style="color: #000000; text-align: left; font-weight: bold;" 
                align="right" height="40px">
                <asp:CheckBox ID="ColdCafe" runat="server" Text="Cold Cafe" />
            </td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;" 
                height="40px">
                </td>
            <td class="style14" style="text-align: right; height="40px">
                <strong>99.00</strong></td>
            <td class="style16" style="text-align: right; height="40px">
                12:00</td>
        </tr>
        <tr>
            <td class="style17" 
                style="color: #000000; text-align: left; font-weight: bold;" height="40px">
                <asp:CheckBox ID="KashmiriPalav" runat="server" Text="Kashmiri Palav" />
            </td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;" 
                height="40px">
                </td>
            <td class="style15" style="text-align: right; height="40px">
                <strong>170.00</strong></td>
            <td class="style16" style="text-align: right; height="40px">
                19:00</td>
        </tr>
        <tr>
            <td class="style17" 
                style="color: #000000; text-align: left; font-weight: bold;" height="40px">
                <asp:CheckBox ID="ChilliCrab" runat="server" Text="Chilli Crab" />
                &nbsp;</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;" 
                height="40px">
                </td>
            <td class="style14" style="text-align: right; height="40px">
                <strong>239.00</strong></td>
            <td class="style16" style="text-align: right; height="40px">
                15:00</td>
        </tr>
        <tr>
            <td class="style17" 
                style="color: #000000; text-align: left; font-weight: bold;" 
                height="40px">
                <asp:CheckBox ID="GarlicSpinach" runat="server" Text="Garlic Spinach" />
                &nbsp;</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;" 
                height="40px">
                </td>
            <td class="style15" style="text-align: right; height="40px">
                <strong>199.00</strong></td>
            <td class="style16" style="text-align: right; height="40px">
                09:00</td>
        </tr>
        <tr>
            <td class="style17" 
                style="color: #000000; text-align: left; font-weight: bold;" 
                height="40px">
                <asp:CheckBox ID="PrawnBiriyani" runat="server" Text="Prawn Biriyani" />
                &nbsp;</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;" 
                height="40px">
                </td>
            <td class="style15" style="text-align: right; height="40px">
                259.00</td>
            <td class="style16" style="text-align: right; height="40px">
                22:00</td>
        </tr>
        <tr>
            <td class="style17" 
                style="color: #000000; text-align: right; font-weight: bold;">
                &nbsp;</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td class="style17" 
                style="color: #000000; text-align: right; font-weight: bold;">
                &nbsp;</td>
            <td class="style23" 
                style="color: #000000; text-align: right; font-weight: bold;">
                </td>
            <td class="style14" 
                
                
                
                style="font-weight: bold; color: #000000; text-align: left; vertical-align: middle">
                &nbsp;</td>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td class="style17" 
                style="color: #000000; text-align: right; font-weight: bold;" 
                height="35px">
                &nbsp;</td>
            <td class="style23" 
                style="color: #000000; text-align: center; font-weight: bold;">
                &nbsp;</td>
            <td class="style14" 
                style="color: #000000; text-align: center; font-weight: bold;" 
                height="35px">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" 
                style="color: #000000; text-align: center; font-weight: bold;" 
                align="center" colspan="4" height="35px">
                <asp:Button ID="Submit" runat="server" Text="Submit" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="UnchekAll" runat="server" Text="Unchek All" OnClick="cmd_UnchekAll" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Cancel" runat="server" Text="Cancel" />
            </td>
        </tr>
        
        
        <tr>
            <td class="style6" 
                style="color: #000000; text-align: center; font-weight: bold;" 
                align="center" colspan="4" height="35px">
                &nbsp;</td>
        </tr>
        
        
    </table>
</asp:Content>

