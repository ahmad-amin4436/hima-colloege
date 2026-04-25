<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true"
CodeBehind="AdminLogin.aspx.cs"
Inherits="HIMACollegeWebsite.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!-- LOGIN WRAPPER -->
<div class="container py-5 d-flex justify-content-center align-items-center" style="min-height:85vh;">

    <div class="card shadow border-0 p-4" style="max-width:420px; width:100%; border-top:4px solid #198754;">

        <!-- TITLE -->
        <h2 class="text-center fw-bold text-dark mb-2">Admin Login</h2>
        <p class="text-center text-muted mb-4">HIMA College Portal</p>

        <!-- USERNAME -->
        <div class="mb-3">
            <asp:TextBox ID="txtUser" runat="server"
                CssClass="form-control"
                placeholder="Username"></asp:TextBox>
        </div>

        <!-- PASSWORD -->
        <div class="mb-3">
            <asp:TextBox ID="txtPass" runat="server"
                TextMode="Password"
                CssClass="form-control"
                placeholder="Password"></asp:TextBox>
        </div>

        <!-- BUTTON -->
        <div class="mb-2">
            <asp:Button ID="btnLogin" runat="server"
                Text="Login"
                CssClass="btn btn-success w-100 fw-bold"
                OnClick="btnLogin_Click" />
        </div>

        <!-- MESSAGE -->
        <asp:Label ID="lblMsg" runat="server"
            CssClass="text-danger d-block text-center mt-2"></asp:Label>

    </div>

</div>

</asp:Content>