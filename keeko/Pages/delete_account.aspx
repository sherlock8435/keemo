<%@ Page Title="" Language="C#" MasterPageFile="_Profile.master" AutoEventWireup="true" CodeFile="delete_account.aspx.cs" Inherits="pages_delete_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    
    <asp:Label ID="Label1" runat="server" Text="enter password"></asp:Label>

    <br />

    <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>

    <br />
    <br />

    <asp:Button ID="delete" runat="server" Text="Button" />



</asp:Content>

    