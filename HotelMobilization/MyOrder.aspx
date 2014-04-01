<%@ Page Title="My Order" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script src="Scripts/TimeCircles.js" type="text/javascript"></script>
<link href="Styles/TimeCircles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:Repeater ID="rptrOrderItems" runat="server" >
<ItemTemplate>
<asp:HiddenField ID="hfPlacedAt" runat="server" Value='<%#Eval("PlacedAt") %>' />
<div data-timer='<%#GetSeconds(Convert.ToDateTime(Eval("PlacedAt")), Convert.ToInt32(Eval("DishId"))) %>' class="CountDownTimer" style="width: 450px; height: 100px;"></div>
</ItemTemplate>
</asp:Repeater>
<script type="text/javascript">
    $(document).ready(function () {
        $(".CountDownTimer").TimeCircles({ time: { Days: { show: false }, Hours: { show: false}} });
    });
</script>
</asp:Content>

