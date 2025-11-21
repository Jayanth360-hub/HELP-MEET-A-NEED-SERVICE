<%@ Page Title="" Language="C#" MasterPageFile="~/Donor.Master" AutoEventWireup="true" CodeBehind="DonorViewWallet.aspx.cs" Inherits="NGOService.DonorViewWallet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 id="forms-example" class="">
        View Wallet Details</h2>
    <div class="">
        <div class="">
            <asp:Table ID="Table1" runat="server">
            </asp:Table>
        </div>
    </div>
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
</asp:Content>
