<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminn.aspx.cs" Inherits="WebApplication4.adminn" %>

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
        .auto-style1 {
           text-align: center;
            font-size: xx-large;
            color: #FFFFFF;
            width: 100%;
            height: 100%;
            
        }
        
        .auto-style7 {
            font-size: medium;
        }
                

        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
        }
        .newStyle2 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bolder;
            
        }
        .auto-style24 {
            font-size: large;
        }
        .auto-style25 {
            width: 392px;
            text-align: left;
        }
        .auto-style26 {
            margin-left: 2080px;
        }
        .auto-style27 {
            text-align: left;
        }
        </style>
</head>
<body  style="background-image:url('https://cdn.wallpapersafari.com/28/99/tx9lA8.jpg');  background-attachment: fixed; background-size:100% 100%;background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div class="auto-style26">
    
        <br />
        <br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="newStyle1">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id,orderid,itemid" DataSourceID="SqlDataSource1" ForeColor="#00CCFF" CssClass="auto-style24" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="orderid" HeaderText="orderid" ReadOnly="True" SortExpression="orderid" />
                            <asp:BoundField DataField="itemid" HeaderText="itemid" ReadOnly="True" SortExpression="itemid" />
                            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" BorderColor="#0066FF" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
                <td rowspan="3">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#00CCFF" CssClass="auto-style24" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="392px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
                    <div class="auto-style27">
                    Choice Custumer id<br />
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Id" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                        <br />
                    </div>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add New Item" Width="127px" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Refresh" Width="127px" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" />
                    <asp:Button ID="Button3" runat="server" Text="Update info" Width="127px" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" OnClick="Button3_Click" />
                </td>
                <td class="auto-style25" rowspan="3">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="itemid" DataSourceID="SqlDataSource3" ForeColor="#00CCFF" CssClass="auto-style24" GridLines="None" Height="100%" Width="100%" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="itemid" HeaderText="itemid" ReadOnly="True" SortExpression="itemid" />
                            <asp:BoundField DataField="itemname" HeaderText="itemname" SortExpression="itemname" />
                            <asp:BoundField DataField="itemprice" HeaderText="itemprice" SortExpression="itemprice" />
                            <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" />
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
                    <div class="auto-style27">
                    Choice Item id<br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource5" DataTextField="itemid" DataValueField="itemid">
                    </asp:DropDownList>
                    </div>
                    <asp:Image ID="Image1"  runat="server" Height="205px" Width="256px" />
                </td>
            </tr>
            <tr>
                <td class="newStyle1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="newStyle1">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [order]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customers] WHERE ([Id] = @Id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <strong>
                    <span class="auto-style7"><asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [item] WHERE ([itemid] = @itemid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="itemid" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customers]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [item]"></asp:SqlDataSource>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    </span>
                    </strong>
                </td>
            </tr>
            </table>
    </form>
</body>
</html>
