<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NGOService.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title>Smart NGO System</title>
    <!-- Meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="package signup Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Meta tag Keywords -->
    <link href="css/style_css.css" rel="stylesheet" type="text/css" media="all">
    <link href="//fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
        rel="stylesheet">
</head>
<body>
    <div class="form">
        <%-- <h1>
            Package Signup Form</h1>--%>
        <div class="form-content">
            <form id="Form1" role="form" runat="server">
            <div class="form-info">
                <h2>
                    Login Form</h2>
            </div>
            <div class="name">
                <label>
                    Select User Type</label>
                <asp:DropDownList ID="ddlUserType" runat="server" class="input1" autofocus>
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>System Manager</asp:ListItem>
                    <asp:ListItem>NGO</asp:ListItem>
                    <asp:ListItem>NGO Member</asp:ListItem>
                    <asp:ListItem>Donor</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ddlUserType"
                    ForeColor="#FF3300" ValidationGroup="A" InitialValue="--Select--" runat="server"
                    ErrorMessage="Please Select UserType"></asp:RequiredFieldValidator>
            </div>
            <div class="pass1">
                <label>
                    Enter User Id</label>
                <asp:TextBox ID="txtUserId" class="input1" runat="server" placeholder="User Id"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter User Id"
                    ControlToValidate="txtUserId" ForeColor="#FF3300" ValidationGroup="A"></asp:RequiredFieldValidator>
            </div>
            <div class="pass1">
                <label>
                    Enter Password</label>
                <asp:TextBox ID="txtPassword" class="input1" runat="server" placeholder="Password"
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Password"
                    ControlToValidate="txtPassword" ForeColor="#FF3300" ValidationGroup="A"></asp:RequiredFieldValidator>
            </div>
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
            <div class="signup">
                <asp:Button ID="btnLogin" class="btn btn-default" runat="server" Text="Login" ValidationGroup="A"
                    OnClick="btnLogin_Click" />
                <asp:Button ID="btnBack" class="btn btn-default" runat="server" Text="Home" OnClick="btnBack_Click" />
            </div>
            </form>
        </div>
    </div>
</body>
</html>
