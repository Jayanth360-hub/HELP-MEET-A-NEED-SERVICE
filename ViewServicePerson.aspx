<%@ Page Title="" Language="C#" MasterPageFile="~/NGO.Master" AutoEventWireup="true" CodeBehind="ViewServicePerson.aspx.cs" Inherits="NGOService.ViewServicePerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 id="forms-example" class="">
        View Service Person Details</h2>
    <div class="">
        <div class="">
            <asp:Table ID="Table1" runat="server">
            </asp:Table>
        </div>
    </div>
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
</asp:Content>
