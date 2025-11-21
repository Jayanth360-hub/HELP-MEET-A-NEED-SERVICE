<%@ Page Title="" Language="C#" MasterPageFile="~/NGOMember.Master" AutoEventWireup="true"
    CodeBehind="UserNotification.aspx.cs" Inherits="NGOService.UserNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-body">
    <h2 id="forms-example" class="">
        User Notification Details</h2>
        <asp:DataList ID="DataList1" runat="server" class="table table-bordered">
            <ItemTemplate>
                <table class="table table-bordered">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="User Name:" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("user") %>' Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                           <asp:LinkButton ID="lnkViewImage" runat="server" 
                                CommandArgument='<%# Eval("photo") %>' onclick="lnkViewImage_Click">Click Here to View Image</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label23" runat="server" Text="Mobile No:" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label24" runat="server" Text='<%# Eval("mobileno") %>' Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Description:" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("description") %>' Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:LinkButton ID="lnkViewLocation" runat="server" 
                                CommandArgument='<%# Eval("location") %>' onclick="lnkViewLocation_Click">View Location</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="lnkAccept" runat="server" onclick="lnkAccept_Click" CommandArgument='<%# Eval("id") %>'>Accept</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
