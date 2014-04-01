<%@ Page Title="Menu" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        Menu Page </h2>
    <br />
    <div style="text-align:center;">
    <div style="text-align:center; display:inline-block;">
    <asp:GridView ID="gvItems" runat="server" AutoGenerateColumns="false">
    <Columns>
    <asp:TemplateField HeaderText="Select">
    <ItemTemplate>
    <asp:HiddenField ID="hfId" runat="server" Value = '<%# Eval("Id")%>' />
    <asp:CheckBox ID="cbSelect" runat="server" EnableViewState="true"  />
    </ItemTemplate>
    </asp:TemplateField>
    
    <asp:TemplateField HeaderText="Item Name">
    <ItemTemplate>
    <asp:Label ID="lblName" Text='<%# Eval("Name") %>' runat="server" />
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Price in Rupees">
    <ItemTemplate>
    <strong><asp:Label ID="lblPrice" Text='<%# Eval("Price") %>' runat="server" /></strong>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Time Taken in Secs">
    <ItemTemplate>
    <asp:Label ID="lblMins" Text='<%# Eval("TimeTaken") %>' runat="server" />
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
        <br />
    <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" 
            onclick="btnPlaceOrder_Click" />
    &nbsp;&nbsp;
        <asp:Button ID="btnUnCheckAll" runat="server" Text="UnCheckAll" OnClick="btnUnCheckAll_Click" />
    </div>
    </div>
   <%--<table align="center" class="style5">
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
                <asp:Button ID="UnchekAll" runat="server" Text="Unchek All" OnClick="UnCheckAll_Click" />
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
        
        
    </table>--%>
</asp:Content>

