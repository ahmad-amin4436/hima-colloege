<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true"
CodeBehind="AdminLogin.aspx.cs"
Inherits="HIMACollegeWebsite.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid bg-dark d-flex justify-content-center align-items-center" style="min-height: 85vh;">

    <div class="card bg-white rounded-0 border-0 shadow-lg" style="max-width: 380px; width: 100%;">
        
        <div class="bg-success" style="height: 4px;"></div>

        <div class="card-body p-4">
            <div class="mb-4">
                <div class="d-flex align-items-center mb-1">
                    <div class="bg-success me-2" style="width: 15px; height: 15px;"></div>
                    <h6 class="text-success fw-bold text-uppercase tracking-widest mb-0" style="font-size: 0.75rem;">Login</h6>
                </div>
                <h2 class="h4 fw-black text-dark mb-0 text-uppercase">Admin <span class="text-success">Portal</span></h2>
            </div>

            <div class="mb-3">
                <label class="fw-bold text-uppercase text-muted mb-1" style="font-size: 0.9rem;">Username</label>
                <asp:TextBox ID="txtUser" runat="server" 
                    CssClass="form-control rounded-0 border-1 py-2 shadow-none bg-light text-dark" 
                    style="font-size: 0.9rem;"
                    placeholder="Username"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label class="fw-bold text-uppercase text-muted mb-1" style="font-size: 0.9rem;">Password</label>
                <asp:TextBox ID="txtPass" runat="server" 
                    TextMode="Password" 
                    CssClass="form-control rounded-0 border-1 py-2 shadow-none bg-light text-dark" 
                    style="font-size: 0.9rem;"
                    placeholder="••••••••"></asp:TextBox>
            </div>

            <div class="mt-4">
                <asp:Button ID="btnLogin" runat="server" 
                    Text="LOGIN" 
                    CssClass="btn btn-success w-100 rounded-0 fw-bold py-2 shadow-sm" 
                    style="letter-spacing: 1px;"
                    OnClick="btnLogin_Click" />
            </div>

            <div class="mt-3 text-center" style="min-height: 20px;">
                <asp:Label ID="lblMsg" runat="server" 
                    CssClass="text-danger fw-bold text-uppercase" style="font-size: 0.7rem;"></asp:Label>
            </div>
        </div>

    </div>
</div>

</asp:Content>