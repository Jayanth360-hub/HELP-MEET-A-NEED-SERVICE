<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NGORegistration.aspx.cs" Inherits="NGOService.NGORegistration" %>

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
                    NGO Registration</h2>
            </div>
            <div class="pass1">
                <label>
                    NGO Name</label>
                <asp:TextBox ID="txtNGOName" class="input1" runat="server" placeholder="NGO Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter NGO Name"
                    ControlToValidate="txtNGOName" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
            </div>
            <div class="pass2">
                <label>
                    NGO Description</label>
                <asp:TextBox ID="txtDescription" class="input1" runat="server" placeholder="Description"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Description"
                    ControlToValidate="txtDescription" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
            </div>
            <div class="pass2">
                <label>
                    Email Id</label>
                <asp:TextBox ID="txtEmailId" class="input1" runat="server" placeholder="Email Id"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Email Id"
                    ControlToValidate="txtEmailId" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailId"
                    ErrorMessage="Email ID Incorrect" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ValidationGroup="B"></asp:RegularExpressionValidator>
            </div>
            <div class="pass2">
                <label>
                    Mobile No</label>
                <asp:TextBox ID="txtMobileNo" class="input1" runat="server" placeholder="Mobile No"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Mobile No"
                    ControlToValidate="txtMobileNo" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only 10 Digits"
                    ValidationGroup="B" ForeColor="Red" ControlToValidate="txtMobileNo" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>
            <div class="pass2">
                <label>
                    Address</label>
                <asp:TextBox ID="txtAddress" class="input1" runat="server" placeholder="Address"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Address"
                    ControlToValidate="txtAddress" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
            </div>
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
            <div class="signup">
                <asp:Button ID="btnRegister" class="btn btn-default" runat="server" Text="Register"
                    ValidationGroup="B" OnClick="btnRegister_Click" />
                <asp:Button ID="btnBack" class="btn btn-default" runat="server" Text="Home" OnClick="btnBack_Click" />
            </div>
            </form>
        </div>
    </div>
</body>
</html>
