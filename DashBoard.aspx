<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="BCS6thEVFall2020DemoProject.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPageTitle" runat="server">
    DASHBOARD
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentPath" runat="server">
                <li class="breadcrumb-item"><a href="DashBoard.aspx">Dashboard</a>
                </li>
                <li class="breadcrumb-item active">Home
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentDescription" runat="server">
    The Graph and statistics shown over here...
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentBody" runat="server">
    <table class="table table-hover table-warning">
        <tr>
            <th>Name</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>Hardware</td>
            <td>This is information regarding the Hardware...</td>
        </tr>
        <tr>
            <td>Hardware</td>
            <td>This is information regarding the Hardware...</td>
        </tr>
        <tr>
            <td>Hardware</td>
            <td>This is information regarding the Hardware...</td>
        </tr>
        <tr>
            <td>Hardware</td>
            <td>This is information regarding the Hardware...</td>
        </tr>
        <tr>
            <td>Hardware</td>
            <td>This is information regarding the Hardware...</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="scripts" runat="server">

</asp:Content>
