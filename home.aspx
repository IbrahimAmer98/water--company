<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WEB_PROJECT_WATER_COMPANY.home" %>

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
            width: 100%;
            height: 819px;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body style="background-image:url('https://www.eumineralwater.com/images/PoharViz.jpg'); background-size:100% 100%;   background-attachment: fixed;background-repeat: no-repeat;
  background-attachment: fixed;">
    <form id="form1" runat="server">
        <div >
        </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="LogOut" BackColor="#3366FF" BorderColor="#3333FF" CssClass="auto-style2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="lets start shopping" BackColor="#3366FF" BorderColor="#3333FF" CssClass="auto-style2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update your info" BackColor="#3366FF" BorderColor="#3333FF" CssClass="auto-style2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
