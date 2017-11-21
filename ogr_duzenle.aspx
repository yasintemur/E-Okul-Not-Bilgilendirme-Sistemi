<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ogr_duzenle.aspx.cs" Inherits="ogr_duzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 24px;
            text-align: left;
        }
        .style3
        {
            width: 117px;
        }
        .style4
        {
            height: 24px;
            width: 117px;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            text-align: left;
            width: 96px;
        }
        .style7
        {
            height: 24px;
            text-align: left;
            width: 96px;
        }
        .style8
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button ID="Button2" runat="server" Text="Not Ekle" 
        onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Not Düzenle" 
        onclick="Button3_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" Text="Ö&#287;renci Ekle" 
        onclick="Button4_Click" />
    <br />
    <br />
    <table class="style1">
        <tr>
            <td class="style3">
                Ad&#305;:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style5" rowspan="5">
                <asp:Image ID="Image2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Soyadi:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                T.C. Kimlik No:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Sinif:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Numara:</td>
            <td class="style7">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Resim:</td>
            <td class="style2" colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style8" colspan="2">
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Ekle" />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="sirano" DataSourceID="AccessDataSource1" Width="288px">
        <Columns>
            <asp:BoundField DataField="sirano" HeaderText="sirano" InsertVisible="False" 
                ReadOnly="True" SortExpression="sirano" />
            <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
            <asp:BoundField DataField="Soyadi" HeaderText="Soyadi" 
                SortExpression="Soyadi" />
            <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" 
                SortExpression="Kimlik" />
            <asp:BoundField DataField="Sinif" HeaderText="Sinif" SortExpression="Sinif" />
            <asp:BoundField DataField="No" HeaderText="No" SortExpression="No" />
            <asp:TemplateField HeaderText="Resim" SortExpression="Resim">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Resim") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/e-okul.accdb" 
        SelectCommand="SELECT * FROM [giris_bilgiler_ogrenci]">
    </asp:AccessDataSource>

</asp:Content>

