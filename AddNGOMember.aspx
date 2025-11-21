<%@ Page Title="" Language="C#" MasterPageFile="~/NGO.Master" AutoEventWireup="true"
    CodeBehind="AddNGOMember.aspx.cs" Inherits="NGOService.AddNGOMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="forms-example" class="">
        Add NGO Member Details</h2>
    <div class="form-group">
        <label>
            NGO Member Name</label>
        <asp:TextBox ID="txtName" class="form-control" runat="server" placeholder="Enter Member Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Member Name"
            ControlToValidate="txtName" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>
            Email ID</label>
        <asp:TextBox ID="txtEmailId" class="form-control" runat="server" placeholder="Enter Email Id"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Email Id"
            ControlToValidate="txtEmailId" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailId"
            ErrorMessage="Email ID Incorrect" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            ValidationGroup="B"></asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
        <label>
            Mobile No</label>
        <asp:TextBox ID="txtMobileNo" class="form-control" runat="server" placeholder="Enter Mobile No"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Mobile No"
            ControlToValidate="txtMobileNo" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMobileNo"
            ErrorMessage="Only 10 Digits" ForeColor="#FF3300" ValidationExpression="[0-9]{10}"
            ValidationGroup="B"></asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
        <label>
            Address</label>
        <asp:TextBox ID="txtAddress" class="form-control" runat="server" placeholder="Enter Address"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Address"
            ControlToValidate="txtAddress" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">
            Enter Longitude
        </label>
        <asp:TextBox ID="txtLongitude" class="form-control" runat="server" placeholder="Enter Longitude"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Longitude"
            ControlToValidate="txtLongitude" ForeColor="Red" ValidationGroup="B"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">
            Enter Latitude</label><asp:TextBox ID="txtLatitude" class="form-control" runat="server" placeholder="Enter Latitude"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Latitude"
            ControlToValidate="txtLatitude" ForeColor="Red" ValidationGroup="B"></asp:RequiredFieldValidator>
    </div>
    <div class="modal-footer">
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
        <asp:Button ID="btnSubmit" class="btn btn-default" runat="server" OnClick="btnSubmit_Click"
            Text="Submit" ValidationGroup="B" />
    </div>
</asp:Content>
