<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="not_grs_syfasi.aspx.cs" Inherits="not_grs_syfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        text-align: left;
    }
        .style4
        {
            text-align: left;
            width: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button4" runat="server" Text="Not Ekle" 
        onclick="Button4_Click" />
&nbsp;&nbsp;
<asp:Button ID="Button5" runat="server" Text="Not Düzenle" 
        onclick="Button5_Click" />
&nbsp;&nbsp;
<asp:Button ID="Button6" runat="server" Text="Ö&#287;renci Ekle" 
        onclick="Button6_Click" />
        <br />
&nbsp;
        <table class="style2">
            <tr>
                <td class="style4">
                    Adi</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="AccessDataSource1" DataTextField="Adi" DataValueField="Adi" 
                        style="text-align: left">
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/e-okul.accdb" 
                        SelectCommand="SELECT [Adi] FROM [giris_bilgiler_ogrenci]">
                    </asp:AccessDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Soyadi</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="AccessDataSource2" DataTextField="Soyadi" DataValueField="Soyadi">
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/e-okul.accdb" 
                        SelectCommand="SELECT [Soyadi] FROM [giris_bilgiler_ogrenci]">
                    </asp:AccessDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Sinif</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="AccessDataSource3" DataTextField="Sinif" DataValueField="Sinif">
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                        DataFile="~/App_Data/e-okul.accdb" 
                        SelectCommand="SELECT [Sinif] FROM [giris_bilgiler_ogrenci]">
                    </asp:AccessDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Numara</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList4" runat="server" 
                        DataSourceID="AccessDataSource4" DataTextField="No" DataValueField="No">
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
                        DataFile="~/App_Data/e-okul.accdb" 
                        SelectCommand="SELECT [No] FROM [giris_bilgiler_ogrenci]">
                    </asp:AccessDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    T.C. Kimlik</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList5" runat="server" 
                        DataSourceID="AccessDataSource5" DataTextField="Kimlik" DataValueField="Kimlik">
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource5" runat="server" 
                        DataFile="~/App_Data/e-okul.accdb" 
                        SelectCommand="SELECT [Kimlik] FROM [giris_bilgiler_ogrenci]">
                    </asp:AccessDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Not1</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="None" ErrorMessage="Not1 Giriniz" 
                        ValidationGroup="ekle"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Not2</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" Display="None" ErrorMessage="Not2 Giriniz" 
                        ValidationGroup="ekle"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Sözlü1</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" Display="None" ErrorMessage="Sözlü1 Giriniz" 
                        ValidationGroup="ekle"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Sözlü2</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" Display="None" ErrorMessage="Sözlü2 Giriniz" 
                        ValidationGroup="ekle"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Ekle" 
                        ValidationGroup="ekle" />
                &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />

</asp:Content>

