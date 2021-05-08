<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cancel.aspx.cs" Inherits="WEB_PROJECT_WATER_COMPANY.cancel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="apple-touch-icon" sizes="180x180" href="file:///C:/Users/user/Desktop/WATER%20COMPANY/apple-touch-icon.png"> 
 <link rel="shortcut icon" href="file:///C:/Users/user/Desktop/WATER%20COMPANY/android-chrome-192x192.png"> 
 <link rel="icon" type="image/png" href="file:///C:/Users/user/Desktop/WATER%20COMPANY/favicon-32x32.png" sizes="32x32"> 
 <link rel="icon" type="image/png" href="file:///C:/Users/user/Desktop/WATER%20COMPANY/android-chrome-192x192.png" sizes="192x192">
 <link rel="icon" type="image/png" href="file:///C:/Users/user/Desktop/WATER%20COMPANY/1.png" sizes="16x16"> 
    <title>WATER_COMPANY</title>
    <style type="text/css">
        #form1 {
            text-align: center;
            width: 100%;
            height: 50%;
        }
        .auto-style1 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style2 {
            width: 24%;
            height: 161px;
        }
    </style>
</head>
<body  style="background-image:url('https://cdn.wallpapersafari.com/28/99/tx9lA8.jpg');  background-attachment: fixed; background-size:100% 100%;background-repeat: no-repeat;">
    <form id="form1" runat="server" class="auto-style2">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [order].orderid, item.itemname AS Item, item.itemprice AS Price, [order].quantity FROM [order] INNER JOIN item ON [order].itemid = item.itemid WHERE ([order].id = @id)">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView HorizontalAlign="Center" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#00CCFF" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="None" DataKeyNames="orderid">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" ReadOnly="True" />
                <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
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
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="orderid" DataValueField="orderid" style="text-align: center" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" BackColor="White">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel Order" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="129px"  />
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Font-Bold="True" ForeColor="White"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Shoping" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="129px" OnClick="Button2_Click" />
    </form>
</body>
</html>
