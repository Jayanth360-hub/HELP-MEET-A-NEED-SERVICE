<%@ Page Title="" Language="C#" MasterPageFile="~/NGO.Master" AutoEventWireup="true" CodeBehind="AddPerson.aspx.cs" Inherits="NGOService.AddPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 id="forms-example" class="">
        Add Person Details</h2>
    <div class="form-group">
        <label>
            Person Name</label>
        <asp:TextBox ID="txtName" class="form-control" runat="server" placeholder="Enter Person Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Person Name"
            ControlToValidate="txtName" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
    </div>
     <div class="form-group">
        <label>
            Select Type</label>
        <asp:DropDownList ID="ddlType" runat="server" class="form-control">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ddlType"
                    ForeColor="#FF3300" ValidationGroup="B" InitialValue="--Select--" runat="server"
                    ErrorMessage="Please Select Type"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>
           Person Age</label>
        <asp:TextBox ID="txtAge" class="form-control" runat="server" placeholder="Enter Age"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Age"
            ControlToValidate="txtAge" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
       
    </div>
     <div class="form-group">
        <label>
            Select Gender</label>
        <asp:DropDownList ID="ddlGender" runat="server" class="form-control">
        <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="ddlGender"
                    ForeColor="#FF3300" ValidationGroup="B" InitialValue="--Select--" runat="server"
                    ErrorMessage="Please Select Gender"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>
            Reason</label>
        <asp:TextBox ID="txtReason" class="form-control" runat="server" placeholder="Enter Reason"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Reason"
            ControlToValidate="txtReason" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
        
    </div>
    <div class="form-group">
        <label>
            Address</label>
        <asp:TextBox ID="txtAddress" class="form-control" runat="server" placeholder="Enter Address"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Address"
            ControlToValidate="txtAddress" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
    </div>
    
    <div class="modal-footer">
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
        <asp:Button ID="btnSubmit" class="btn btn-default" runat="server" OnClick="btnSubmit_Click"
            Text="Submit" ValidationGroup="B" />
    </div>
</asp:Content>
