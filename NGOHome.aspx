<%@ Page Title="" Language="C#" MasterPageFile="~/NGO.Master" AutoEventWireup="true" CodeBehind="NGOHome.aspx.cs" Inherits="NGOService.NGOHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 id="forms-example" class="">
        Change Password</h2>
    <div class="form-group">
        <label>
            Old Password</label>
        <asp:TextBox ID="txtOldPassword" class="form-control" runat="server" placeholder="Old Password"
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Old Password"
            ControlToValidate="txtOldPassword" ForeColor="#FF3300" ValidationGroup="A"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>
            New Password</label>
        <asp:TextBox ID="txtNewPassword" class="form-control" runat="server" placeholder="New Password"
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter New Password"
            ControlToValidate="txtNewPassword" ForeColor="#FF3300" ValidationGroup="A"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>
            Confirm Password</label>
        <asp:TextBox ID="txtConfirmPassword" class="form-control" runat="server" placeholder="Confirm Password"
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Confirm Password"
            ControlToValidate="txtConfirmPassword" ForeColor="#FF3300" ValidationGroup="A"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match"
            ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ForeColor="#FF3300"
            ValidationGroup="A"></asp:CompareValidator>
    </div>
    <div class="modal-footer">
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
        <asp:Button ID="btnSubmit" class="btn btn-default" runat="server" OnClick="btnSubmit_Click"
            Text="Submit" ValidationGroup="A" />
    </div>
</asp:Content>
