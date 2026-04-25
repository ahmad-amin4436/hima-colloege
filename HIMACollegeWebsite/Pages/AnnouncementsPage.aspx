<%@ Page Title="Announcements" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true"
CodeBehind="AnnouncementsPage.aspx.cs"
Inherits="HIMACollegeWebsite.AnnouncementsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!-- HERO -->
<div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">

    <div class="position-absolute w-100 h-100">
        <img src="https://images.unsplash.com/photo-1562774053-701939374585?auto=format&fit=crop&w=1600&q=80"
             class="w-100 h-100 object-fit-cover" />
    </div>

    <div class="position-absolute w-100 h-100 bg-dark opacity-75"></div>

    <div class="container position-relative">
        <h1 class="display-2 fw-bold text-uppercase">Announcements</h1>

        <p class="lead col-md-8 mx-auto">
            Stay updated with the latest news, notices and campus updates.
        </p>
    </div>

</div>

<!-- TITLE -->
<div class="container py-5 text-center">

    <h2 class="fw-bold text-uppercase">Latest Updates</h2>
    <p class="text-muted">News, notices and important information</p>

</div>

<!-- ANNOUNCEMENTS -->
<div class="container">

    <div class="row g-4">

        <asp:Repeater ID="rpAllAnnouncements" runat="server">

            <ItemTemplate>

                <div class="col-md-6 col-lg-4 d-flex">

                    <div class="card shadow w-100 h-100 border-start border-2 border-success p-3">

                        <small class="text-success fw-bold">
                            <%# Eval("DatePosted","{0:dd MMM yyyy}") %>
                        </small>

                        <h5 class="fw-bold text-dark mt-2">
                            <%# Eval("Title") %>
                        </h5>

                        <p class="text-muted mb-0">
                            <%# Eval("Details") %>
                        </p>

                    </div>

                </div>

            </ItemTemplate>

        </asp:Repeater>

    </div>

</div>

<!-- CTA -->
<div class="container py-5">

    <div class="bg-success text-white text-center p-5 rounded shadow">

        <h2 class="fw-bold text-uppercase">Need More Information?</h2>

        <p class="lead">
            Contact our administration office for help and guidance.
        </p>

        <a href="Contact.aspx" class="btn btn-warning fw-bold px-4 mt-2">
            Contact Us
        </a>

    </div>

</div>

</asp:Content>