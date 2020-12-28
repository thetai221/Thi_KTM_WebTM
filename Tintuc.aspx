<%@ Page Title="Tin tức" Language="C#" MasterPageFile="~/NewFolder1/Site1.Master" AutoEventWireup="true" CodeBehind="Tintuc.aspx.cs" Inherits="Quanlytintuc.Tintuc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TIN_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="TIN_ID" HeaderText="TIN_ID" ReadOnly="True" SortExpression="TIN_ID" />
        <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
        <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
        <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" SortExpression="TGIA_ID" />
    </Columns>
</asp:GridView>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="TIN_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="TIN_ID" HeaderText="TIN_ID" ReadOnly="True" SortExpression="TIN_ID" />
        <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
        <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
        <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" SortExpression="TGIA_ID" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlytintucConnectionString1 %>" DeleteCommand="DELETE FROM [TINTUC] WHERE [TIN_ID] = @TIN_ID" InsertCommand="INSERT INTO [TINTUC] ([TIN_ID], [NOIDUNG], [NGAYGUI], [TGIA_ID]) VALUES (@TIN_ID, @NOIDUNG, @NGAYGUI, @TGIA_ID)" ProviderName="<%$ ConnectionStrings:quanlytintucConnectionString1.ProviderName %>" SelectCommand="SELECT [TIN_ID], [NOIDUNG], [NGAYGUI], [TGIA_ID] FROM [TINTUC]" UpdateCommand="UPDATE [TINTUC] SET [NOIDUNG] = @NOIDUNG, [NGAYGUI] = @NGAYGUI, [TGIA_ID] = @TGIA_ID WHERE [TIN_ID] = @TIN_ID">
    <DeleteParameters>
        <asp:Parameter Name="TIN_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TIN_ID" Type="String" />
        <asp:Parameter Name="NOIDUNG" Type="String" />
        <asp:Parameter Name="NGAYGUI" Type="String" />
        <asp:Parameter Name="TGIA_ID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NOIDUNG" Type="String" />
        <asp:Parameter Name="NGAYGUI" Type="String" />
        <asp:Parameter Name="TGIA_ID" Type="String" />
        <asp:Parameter Name="TIN_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
