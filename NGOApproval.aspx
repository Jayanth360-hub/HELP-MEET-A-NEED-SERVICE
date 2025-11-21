<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NGOApproval.aspx.cs" Inherits="NGOService.NGOApproval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 id="forms-example" class="">
       NGO Details</h2>
  
    <div class="">
        <div class="">
            <asp:Table ID="Table1" runat="server">
            </asp:Table>
        </div>
    </div>
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
</asp:Content>
