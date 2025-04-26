﻿<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="chocolate.aspx.cs" Inherits="pages_chocolate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-right: 10%; margin-left: 10%;">
    <div style="float: left;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/resources/images/items/bench.png" BorderColor="Black" />
    </div>
    <div style="margin-left: 10px;">
        <asp:Label ID="name" runat="server" Text="name"></asp:Label>

        <br />

        <asp:TextBox ID="description" runat="server" ReadOnly="True" TextMode="MultiLine" Width="300px" Height="200px"></asp:TextBox>

        <br />

        <asp:Label ID="category" runat="server" Text="category"></asp:Label>

        <br />

        <asp:Label ID="quantity" runat="server" Text="quantity"></asp:Label>

        <br />

        <asp:Label ID="price" runat="server" Text="price"></asp:Label>

        <br />

        <asp:Button ID="cart" runat="server" Text="Add to Cart" OnClick="cart_Click"/>
    </div>
</div>
</asp:Content>

