<%@ Page Title="" Language="C#" MasterPageFile="~/Donor.Master" AutoEventWireup="true" CodeBehind="AddWallet.aspx.cs" Inherits="NGOService.AddWallet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 id="forms-example" class="">
        Deposite Amount Wallet</h2>
    <div class="form-group">
        <label>
             Enter Amount</label>
        <asp:TextBox ID="txtAmt" class="form-control" runat="server" placeholder="Enter Amount"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Amount"
            ControlToValidate="txtAmt" ForeColor="#FF3300" ValidationGroup="B"></asp:RequiredFieldValidator>
    </div>
    
    <div class="modal-footer">
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
        <asp:Button ID="btnSubmit" class="btn btn-default" runat="server" OnClick="btnSubmit_Click"
            Text="Submit" ValidationGroup="B" />
       
    </div>
</asp:Content>
