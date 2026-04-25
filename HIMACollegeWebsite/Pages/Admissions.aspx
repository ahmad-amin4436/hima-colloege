<%@ Page Title="Admissions" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Admissions.aspx.cs" 
    Inherits="HIMACollegeWebsite.Admissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute w-100 h-100">
            <img src="https://images.unsplash.com/photo-1562774053-701939374585?auto=format&fit=crop&w=1600&q=80"
                 class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
        </div>
        
        <div class="container position-relative">
            <h1 class="display-3 fw-bold text-uppercase mb-3">Admissions</h1>
            <p class="lead col-md-8 mx-auto fs-4 opacity-75">
               Start your journey toward becoming a "Job Provider, Not a Job Seeker."
            </p>
        </div>
    </div>
</div>

<section id="process" class="py-5 bg-white">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">1. Admission Process</h2>
            <p class="text-muted">A simple 3-step guide to securing your future at HIMA.</p>
        </div>
        
        <div class="row g-4 text-center">
            <div class="col-md-4">
                <div class="p-4 shadow-sm border h-100">
                    <div class="display-5 text-success mb-3"><i class="fas fa-file-signature"></i></div>
                    <h5 class="fw-bold">Step 1: Registration</h5>
                    <p class="small text-muted">Visit our campus or download the admission form below to begin your application.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-4 shadow-sm border h-100">
                    <div class="display-5 text-success mb-3"><i class="fas fa-user-check"></i></div>
                    <h5 class="fw-bold">Step 2: Interview</h5>
                    <p class="small text-muted">Successful candidates will be called for a short technical interview and counseling session.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-4 shadow-sm border h-100">
                    <div class="display-5 text-success mb-3"><i class="fas fa-university"></i></div>
                    <h5 class="fw-bold">Step 3: Enrollment</h5>
                    <p class="small text-muted">Submit your original documents and dues to confirm your seat in the desired department.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="criteria" class="py-5 bg-light">
    <div class="container py-5">
        <div class="row g-5 align-items-center">
            <div class="col-lg-6">
                <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">2. Admission Criteria</h2>
                <div class="accordion border-0" id="criteriaAccordion">
                    <div class="accordion-item mb-3 shadow-sm border-0">
                        <h2 class="accordion-header">
                            <button class="accordion-button fw-bold text-uppercase" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne">
                                DAE / Engineering Programs
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#criteriaAccordion">
                            <div class="accordion-body text-muted">
                                Candidates must have passed Matriculation (Science) with at least 45% marks. Diploma holders (DAE) are eligible for BS program entry.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item mb-3 shadow-sm border-0">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed fw-bold text-uppercase" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo">
                                Required Documents
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#criteriaAccordion">
                            <div class="accordion-body text-muted">
                                <ul class="small">
                                    <li>Matric / Inter Result Card (4 Copies)</li>
                                    <li>CNIC or B-Form (4 Copies)</li>
                                    <li>Father/Guardian CNIC (2 Copies)</li>
                                    <li>6 Passport Size Photographs (Blue Background)</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="bg-dark p-5 text-white shadow-lg">
                    <h4 class="fw-bold text-success text-uppercase mb-3">Our Vision</h4>
                    <p class="opacity-75 italic">"To produce entrepreneurs—the job providers, not the job seekers."</p>
                    <hr class="border-secondary">
                    <p class="small mb-0">HIMA College is committed to equipping students with advanced technological knowledge and practical training for effective productivity.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="downloads" class="py-5 bg-white">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">3. Prospectus and Forms</h2>
            <p class="text-muted">Get the necessary forms and prospectus here.</p>
        </div>

        <div class="row g-4 justify-content-center">
            <div class="col-md-5 col-lg-4">
                <div class="card text-center border-0 shadow-sm p-4 h-100">
                    <div class="mb-3 text-danger"><i class="fas fa-file-pdf fa-3x"></i></div>
                    <h5 class="fw-bold text-uppercase">Prospectus 2026</h5>
                    <p class="small text-muted">Detailed info about our curriculum, labs, and faculty.</p>
                    <a href="/Assets/Prospectus_2026.pdf" download class="btn btn-dark rounded-0 w-100 fw-bold">DOWNLOAD PDF</a>
                </div>
            </div>

            <div class="col-md-5 col-lg-4">
                <div class="card text-center border-success border shadow-sm p-4 h-100">
                    <div class="mb-3 text-success"><i class="fas fa-file-download fa-3x"></i></div>
                    <h5 class="fw-bold text-uppercase">Admission Form</h5>
                    <p class="small text-muted">Download and fill manually to submit at the campus office.</p>
                    <a href="/Assets/Admission_Form_HIMA.pdf" download class="btn btn-success rounded-0 w-100 fw-bold">DOWNLOAD FORM</a>
                </div>
            </div>
        </div>
    </div>
</section>

</asp:Content>