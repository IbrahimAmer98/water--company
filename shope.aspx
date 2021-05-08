<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shope.aspx.cs" Inherits="WEB_PROJECT_WATER_COMPANY.shope" %>

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
            width: 50%;
            height: 50%;
        }
        .auto-style3 {
            margin-left: 80px;
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
            height: 29px;
        }
        .auto-style8 {
            margin-left: 120px;
            text-align: left;
            width: 50%;
            height: 50%;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            margin-left: 120px;
            text-align: left;
        }
        .auto-style11 {
            margin-left: 40px;
            text-align: left;
        }
        .auto-style13 {
            font-size: medium;
        }
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style15 {
            text-align: center;
        }
    </style>
</head>
<body style="background-image:url('https://cdn.wallpapersafari.com/28/99/tx9lA8.jpg');  background-attachment: fixed; background-size:100% 100%;background-repeat: no-repeat;">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style15">Welcome</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Products</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Choose a product" CssClass="auto-style13"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Quantity</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the Quantity" CssClass="auto-style13"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Price</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Picture</td>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" Height="133px" Width="166px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add to Cart" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="129px" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Remove" BackColor ="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="129px" ValidationGroup="g2" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Shoping
                        <br />
                        Cart</td>
                    <td class="auto-style10">
                        <asp:ListBox ID="ListBox1" runat="server" BackColor="#0066FF" ForeColor="White" Width="592px" Height="180px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Total</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Buy" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="129px" />
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="View Order" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="129px" ValidationGroup="gg22" />
                        <asp:Button ID="Button5" runat="server" Text="Back Home" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="129px" ValidationGroup="gg22" OnClick="Button5_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Order Number<br />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div class="auto-style9">
        </div>
    </form>
</body>
</html>
