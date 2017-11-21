<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ogrenci_giris.aspx.cs" Inherits="ogrenci_giris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     Ho&#351;gelidiniz<br />
     <br />
        T.C.Kimlik:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

        Okul No:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
     <br />
     <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ÇIKI&#350;" />
     <br />
     <br />
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="AccessDataSource1">
        <ItemTemplate>
            Ad&#305;:<%# Eval("Adi") %><br />Soyadi:<%# Eval("Soyadi") %><br />Sinif:<%# Eval("Sinif") %><br />No:<%# Eval("No") %><br />Not1:<%# Eval("Not1") %><br />Not2:<%# Eval("Not2") %><br />Sözlü1:<%# Eval("Sözlü1") %><br />Sözlü2:<%# Eval("Sözlü2") %>
        </ItemTemplate>
     </asp:Repeater>
     <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
         DataFile="~/App_Data/e-okul.accdb" 
         SelectCommand="SELECT * FROM [notlar] WHERE ([Kimlik] LIKE '%' + ? + '%')">
         <SelectParameters>
             <asp:ControlParameter ControlID="TextBox3" Name="Kimlik" PropertyName="Text" 
                 Type="String" />
         </SelectParameters>
     </asp:AccessDataSource>
    </p>


</asp:Content>

