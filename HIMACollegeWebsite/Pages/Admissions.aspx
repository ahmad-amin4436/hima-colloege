<%@ Page Title="Admissions & Downloads" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admissions.aspx.cs" Inherits="HIMACollegeWebsite.Admissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute top-0 start-0 w-100 h-100">
            <img src="/Assets/carousel1.png" 
                 class="w-100 h-100" 
                 style="object-fit: cover;" 
                 alt="HIMA Campus" />
            
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
        </div>
        
        <div class="container position-relative" style="z-index: 1;">
            <h1 class="display-3 fw-bold text-uppercase mb-3">Admissions</h1>
            <p class="lead col-md-8 mx-auto fs-4 opacity-75">
               Your journey toward engineering excellence begins here. Join a community built on innovation and industrial leadership.
            </p>
        </div>
    </div>
</div>

    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase d-inline-block pb-2 position-relative">
                Admission <span class="text-success">Resources</span>
            </h2>
            <div class="bg-success mx-auto mb-3" style="height: 4px; width: 80px;"></div>
            <p class="text-muted">Follow the steps below to complete your enrollment process.</p>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-12">
                
                <div id="fee-section" class="mb-5">
                    <div class="text-start mb-3">
                        <h3 class="fw-bold text-dark text-uppercase border-start border-danger border-4 ps-3">01. Fee Structure</h3>
                        <p class="text-muted small ms-4">View the latest financial breakdown for the upcoming academic year.</p>
                    </div>
                    
                    <div class="card shadow-sm border-0 border-start border-danger border-5 rounded-0">
                        <div class="card-body p-4 d-md-flex align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                                <i class="bi bi-file-earmark-pdf-fill text-danger fs-1 me-4"></i>
                                <div>
                                    <h4 class="fw-bold mb-1 fs-5">Fee Schedule 2026-27</h4>
                                    <p class="text-muted mb-0 small">Official Tuition & Lab Charges</p>
                                </div>
                            </div>
                            <div class="mt-3 mt-md-0 d-flex gap-2">
                                <asp:HyperLink ID="lnkViewFee" runat="server" Target="_blank" CssClass="btn btn-outline-dark px-4 rounded-0 fw-bold btn-sm">VIEW</asp:HyperLink>
                                <asp:HyperLink ID="lnkDownFee" runat="server" CssClass="btn btn-danger px-4 rounded-0 fw-bold btn-sm">DOWNLOAD</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
                <br />

                <div id="form-section" class="mb-5">
                    <div class="text-start mb-3">
                        <h3 class="fw-bold text-dark text-uppercase border-start border-primary border-4 ps-3">02. Admission Form</h3>
                        <p class="text-muted small ms-4">Download and print the registration form for manual submission.</p>
                    </div>
                    <br />

                    <div class="card shadow-sm border-0 border-start border-primary border-5 rounded-0">
                        <div class="card-body p-4 d-md-flex align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                                <i class="bi bi-file-earmark-text-fill text-primary fs-1 me-4"></i>
                                <div>
                                    <h4 class="fw-bold mb-1 fs-5">Registration Form</h4>
                                    <p class="text-muted mb-0 small">Official Enrollment Document</p>
                                </div>
                            </div>
                            <br />
                            <div class="mt-3 mt-md-0 d-flex gap-2">
                                <asp:HyperLink ID="lnkViewForm" runat="server" Target="_blank" CssClass="btn btn-outline-dark px-4 rounded-0 fw-bold btn-sm">VIEW</asp:HyperLink>
                                <asp:HyperLink ID="lnkDownForm" runat="server" CssClass="btn btn-primary px-4 rounded-0 fw-bold btn-sm">DOWNLOAD</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="prospectus-section" class="mb-5">
                    <div class="text-start mb-3">
                        <h3 class="fw-bold text-dark text-uppercase border-start border-success border-4 ps-3">03. College Prospectus</h3>
                        <p class="text-muted small ms-4">Everything you need to know about our departments and campus life.</p>
                    </div>

                    <div class="card shadow-sm border-0 border-start border-success border-5 rounded-0">
                        <div class="card-body p-4 d-md-flex align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                                <i class="bi bi-book-fill text-success fs-1 me-4"></i>
                                <div>
                                    <h4 class="fw-bold mb-1 fs-5">Full Prospectus 2026</h4>
                                    <p class="text-muted mb-0 small">Campus Guide & Course Details</p>
                                </div>
                            </div>
                            <div class="mt-3 mt-md-0 d-flex gap-2">
                                <asp:HyperLink ID="lnkViewPros" runat="server" Target="_blank" CssClass="btn btn-outline-dark px-4 rounded-0 fw-bold btn-sm">VIEW</asp:HyperLink>
                                <asp:HyperLink ID="lnkDownPros" runat="server" CssClass="btn btn-success px-4 rounded-0 fw-bold btn-sm">DOWNLOAD</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>