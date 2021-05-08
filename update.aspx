<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="WEB_PROJECT_WATER_COMPANY.update1" %>

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
            width: 55%;
            height: 50%;
        }
        .auto-style2 {
            width: 265px;
            text-align: center;
        }
        .auto-style3 {
            width: 265px;
            height: 21px;
            text-align: center;
        }
        .auto-style4 {
            height: 21px;
            width: 1147px;
            text-align: left;
        }
        .auto-style6 {
            width: 1147px;
            text-align: left;
        }
        .auto-style7 {
            width: 265px;
            height: 10px;
            text-align: center;
        }
        .auto-style8 {
            width: 1147px;
            height: 10px;
            text-align: left;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>

</head>
<body style="background-image:url('https://c1.wallpaperflare.com/preview/157/139/822/bottle-mineral-water-bottle-of-water-drinking-water.jpg');  background-attachment: fixed; background-size:100% 100%;background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div class="auto-style10">
    
    <table class="auto-style1"  align=center>
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="you must enter name" CssClass="auto-style9"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="199px" OnTextChanged="TextBox3_TextChanged" CssClass="auto-style9" AutoCompleteType="Disabled"></asp:TextBox>
                    <span class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="you must enter your email"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email not Valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Phone</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style9" AutoCompleteType="Disabled"></asp:TextBox>
                    <span class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBox4" ErrorMessage="Enter a phone number"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a phone number from 10 digit and start with 059" ValidationExpression="(059)\d{7}"></asp:RegularExpressionValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" CssClass="auto-style9" AutoCompleteType="Disabled"></asp:TextBox>
                    <span class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter a Password"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox5" ErrorMessage="Passwords Mismatch"></asp:CompareValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ret_Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style9" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" CssClass="auto-style9"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
            <asp:Button ID="Button2" runat="server" Text="Back Home" OnClick="Button2_Click" BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="28px" style="text-align: center" Width="123px" ValidationGroup="g3" />
                </td>
                <td class="auto-style4">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save"  BackColor="#3366FF" BorderColor="#3333FF" ForeColor="White" Font-Bold="True" Font-Names="Times New Roman" Height="29px" style="text-align: center" Width="122px" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9"></asp:Label>
                </td>
            </tr>
        </table>
           </table>
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
