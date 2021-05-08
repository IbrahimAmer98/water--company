<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WEB_PROJECT_WATER_COMPANY.Login" %>

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
            width: 50%;
            height: 50%;
        }
        .auto-style3 {
            text-align: center;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            height: 91px;
        }
        .auto-style6 {
            text-align: center;
            height: 75px;
        }
        .auto-style7 {
            text-align: center;
            height: 160px;
        }
        .newStyle1 {
            font-family: Roman;
        }
        .newStyle2 {
        }
        .newStyle3 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bolder;
        }
        .newStyle4 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bolder;
        }
    </style>

</head>
<body style="background-image:url('https://cdn.wallpapersafari.com/28/99/tx9lA8.jpg');  background-attachment: fixed; background-size:100% 100%;background-repeat: no-repeat;">
    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <p class="auto-style3">
            <span class="newStyle3">WATER COMPANY WEBSITE</span></p>
    <div >
    
            <table  class="auto-style1" align="center">
                <tr>
                    <td class="auto-style5">
                        &nbsp;&nbsp;
                        <asp:TextBox placeholder="User name" ID="TextBox1" runat="server" AutoCompleteType="Disabled" Height="26px" Width="169px" ValidationGroup="g"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter User Name" style="color: #FFFFFF; background-color: #0000FF;" ValidationGroup="g"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;<asp:TextBox placeholder="Password" ID="TextBox2" runat="server" TextMode="Password" Height="26px" Width="174px" ValidationGroup="g"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" style="color: #FFFFFF; background-color: #0000FF;" ValidationGroup="g"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                      
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="122px" ValidationGroup="g" />
                        <asp:Button ID="Button2" runat="server" Text="SignUp" OnClick="Button2_Click" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" Width="129px" ValidationGroup="g4" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
    
    </div>
    </form>
    <p>

    </p>
</body>
</html>
