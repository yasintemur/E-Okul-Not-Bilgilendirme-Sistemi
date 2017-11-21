<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="not_dznlme.aspx.cs" Inherits="not_dznlme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 117px;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
            width: 117px;
            height: 26px;
            text-align: left;
        }
        .style5
        {
            text-align: left;
            height: 26px;
        }
        .style6
        {
            width: 117px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Not Ekle" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="Not Düzenle" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
        Text="Ö&#287;renci Ekle" />
    <br />
    <table class="style1" style="height: 240px">
        <tr>
            <td class="style4">
                Ad&#305;:</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Soyad&#305;:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                S&#305;n&#305;f:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                No:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                T.C. Kimlik:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Not1:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Not2:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Not3:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Not4</td>
            <td class="style3">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Düzenle" />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="sirano" DataSourceID="AccessDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="sirano" HeaderText="sirano" InsertVisible="False" 
                ReadOnly="True" SortExpression="sirano" />
            <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
            <asp:BoundField DataField="Soyadi" HeaderText="Soyadi" 
                SortExpression="Soyadi" />
            <asp:BoundField DataField="Sinif" HeaderText="Sinif" SortExpression="Sinif" />
            <asp:BoundField DataField="No" HeaderText="No" SortExpression="No" />
            <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" 
                SortExpression="Kimlik" />
            <asp:BoundField DataField="Not1" HeaderText="Not1" SortExpression="Not1" />
            <asp:BoundField DataField="Not2" HeaderText="Not2" 
                SortExpression="Not2" />
            <asp:BoundField DataField="Sözlü1" HeaderText="Sözlü1" 
                SortExpression="Sözlü1" />
            <asp:BoundField DataField="Sözlü2" HeaderText="Sözlü2" 
                SortExpression="Sözlü2" />
            <asp:ButtonField CommandName="Select" Text="Seç" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/e-okul.accdb" 
        
        SelectCommand="SELECT [sirano], [Adi], [Soyadi], [Sinif], [No], [Kimlik], [Not1], [Not2], [Sözlü1], [Sözlü2] FROM [notlar]">
    </asp:AccessDataSource>

</asp:Content>

