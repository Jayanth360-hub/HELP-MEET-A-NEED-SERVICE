<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddType.aspx.cs" Inherits="NGOService.AddType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 id="forms-example" class="">
        Add Type</h2>
    <div class="form-group">
        <label>
             Enter Type</label>
        <asp:TextBox ID="txtType" class="form-control" runat="server" placeholder="Enter Type"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Type"
            ControlToValidate="txtType" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
    </div>
    
    <div class="modal-footer">
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
        <asp:Button ID="btnSubmit" class="btn btn-default" runat="server" OnClick="btnSubmit_Click"
            Text="Submit" ValidationGroup="B" />
       
    </div>
</asp:Content>
