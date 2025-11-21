<%@ Page Title="" Language="C#" MasterPageFile="~/Donor.Master" AutoEventWireup="true"
    CodeBehind="PayNGO.aspx.cs" Inherits="NGOService.PayNGO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="forms-example" class="">
        Recipient Requirements Payment Status</h2>
    <div class="form-group">
        <label>
            Select NGO</label>
        <asp:DropDownList ID="ddlNGO" runat="server" class="form-control" autofocus>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ddlNGO"
                    ForeColor="#FF3300" ValidationGroup="B" InitialValue="--Select--" runat="server"
                    ErrorMessage="Please Select NGO"></asp:RequiredFieldValidator>
    </div>
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
