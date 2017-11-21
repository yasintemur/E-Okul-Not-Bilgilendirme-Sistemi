<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bakanlaroku.aspx.cs" Inherits="bakanlaroku" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="AccessDataSource1">
    <ItemTemplate>
    <%# Eval("makalebaslik")%><br />
    <br />
    <%# Eval("makaleicerik")%><br />
    </ItemTemplate>
    </asp:Repeater>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/e-okul.accdb" 
        SelectCommand="SELECT * FROM [bakanlar] WHERE ([Kimlik] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Kimlik" QueryStringField="kimlik" 
                Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    Okunma Sayısı:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>

