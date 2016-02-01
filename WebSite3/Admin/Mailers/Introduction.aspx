<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/Admin.master" AutoEventWireup="true" CodeFile="Introduction.aspx.cs" Inherits="Admin_Mailers_Introduction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Button ID="btnSendMail" runat="server" Text="Send Intro Mail" OnClick="btnSendMail_Click" />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</asp:Content>

