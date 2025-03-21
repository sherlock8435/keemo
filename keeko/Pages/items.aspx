<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="items.aspx.cs" Inherits="pages_items" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="box-4">

        <div style="margin: 50px">
            <asp:GridView ID="gvProperties" runat="server" AutoGenerateColumns="true" BorderWidth="1px"
                CellPadding="5" GridLines="Both" OnSelectedIndexChanged="gvProperties_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <img src='<%# Eval("ItemImg") %>' alt="Property Image" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ItemCode" HeaderText="Item ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="ItemImg" HeaderText="Image" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:BoundField DataField="Category" HeaderText="Category" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
