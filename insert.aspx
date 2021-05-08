<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="WebApplication4.insert" %>

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
        .auto-style2 {
            width: 209px;
            font-size: x-large;
        }
       
        .auto-style3 {
            width: 141px;
            text-align: left;
        }
        .auto-style4 {
            
        }
        .auto-style5 {
            width: 41px;
            font-size: medium;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            width: 209px;
            font-size: x-large;
            height: 141px;
        }
        .auto-style8 {
            width: 141px;
            text-align: left;
            height: 141px;
        }
    </style>
</head>
<body style="background-image:url('https://cdn.wallpapersafari.com/28/99/tx9lA8.jpg');  background-attachment: fixed; background-size:100% 100%;background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style2">
                    <p class="auto-style4">
                        <strong>&nbsp;&nbsp; Item ID</strong></p>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <p>
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp; Item Name</strong></p>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Item Name" ValidationGroup="g" CssClass="auto-style5"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <p>
                        <strong>&nbsp;&nbsp; Item Price</strong></p>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Item Price Numbers only" ValidationGroup="g" CssClass="auto-style6"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <p>
                        <strong>&nbsp; Item Image</strong></p>
                </td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Rockwell" ForeColor="Black"  />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Upload Image" ValidationGroup="g" CssClass="auto-style6"></asp:RequiredFieldValidator>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="129px" ValidationGroup="g" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Home" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="129px" ValidationGroup="g3" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
