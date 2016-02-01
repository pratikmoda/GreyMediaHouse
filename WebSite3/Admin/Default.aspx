<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Grey Media House</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Karla' rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="wrap">
                <div class="logo">
                    <h1><a href="/">GREY MEDIA HOUSE</a></h1>
                </div>

                <div class="clear"></div>
            </div>
        </div>
        <div class="adminmain">
            <table class="divLogin">
                <tr>
                    <td>Login ID</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click" /></td>

                </tr>
                <tr>
                    <td id="tdMsg" runat="server"></td>
                </tr>
            </table>
        </div>
        <div class="footer">

            <div class="footer-bottom">
                <div class="wrap">
                    <div class="copy">
                        <p class="copy">© 2014 by <a href="http://www.greymediahouse.com" target="_blank">Grey Media House</a></p>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
