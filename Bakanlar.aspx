<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bakanlar.aspx.cs" Inherits="Bakanlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>MEB BAKANLARI</center>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="AccessDataSource1">
    <HeaderTemplate>
    <ul>
    </HeaderTemplate>
    <ItemTemplate>
    <li><a href="bakanlaroku.aspx?kimlik=<%# Eval("Kimlik") %>"><%# Eval("bakan-isim") %> <%# Eval("bakan-soyisim") %></a></li>
    </ItemTemplate>
    <FooterTemplate>
    </ul>
    </FooterTemplate>
    </asp:Repeater>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/e-okul.accdb" SelectCommand="SELECT * FROM [bakanlar]">
    </asp:AccessDataSource>
</asp:Content>

