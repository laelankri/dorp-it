<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showproduct.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:igroup11_prodConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([imageUrl] = @original_imageUrl) OR ([imageUrl] IS NULL AND @original_imageUrl IS NULL)) AND (([amount] = @original_amount) OR ([amount] IS NULL AND @original_amount IS NULL)) AND (([discount] = @original_discount) OR ([discount] IS NULL AND @original_discount IS NULL))" InsertCommand="INSERT INTO [product] ([id], [name], [price], [imageUrl], [amount], [discount]) VALUES (@id, @name, @price, @imageUrl, @amount, @discount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [name] = @name, [price] = @price, [imageUrl] = @imageUrl, [amount] = @amount, [discount] = @discount WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([imageUrl] = @original_imageUrl) OR ([imageUrl] IS NULL AND @original_imageUrl IS NULL)) AND (([amount] = @original_amount) OR ([amount] IS NULL AND @original_amount IS NULL)) AND (([discount] = @original_discount) OR ([discount] IS NULL AND @original_discount IS NULL))" >
        <DeleteParameters>


            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Decimal" />
            <asp:Parameter Name="original_imageUrl" Type="String" />
            <asp:Parameter Name="original_amount" Type="Int32" />
            <asp:Parameter Name="original_discount" Type="Boolean" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="imageUrl" Type="String" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="discount" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="imageUrl" Type="String" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="discount" Type="Boolean" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Decimal" />
            <asp:Parameter Name="original_imageUrl" Type="String" />
            <asp:Parameter Name="original_amount" Type="Int32" />
            <asp:Parameter Name="original_discount" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound = "OnRowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
            <asp:CheckBoxField DataField="discount" HeaderText="discount" SortExpression="discount" />
            <asp:ImageField DataImageUrlField="imageUrl" HeaderText="product pic">
            </asp:ImageField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    
</asp:Content>

