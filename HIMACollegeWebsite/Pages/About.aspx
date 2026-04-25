<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="About.aspx.cs"
    Inherits="HIMACollegeWebsite.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute w-100 h-100">
            <img src="https://images.unsplash.com/photo-1562774053-701939374585?auto=format&fit=crop&w=1600&q=80"
                 class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
        </div>
        
        <div class="container position-relative">
            <h1 class="display-3 fw-bold text-uppercase mb-3">About Us</h1>
            <p class="lead col-md-8 mx-auto fs-4 opacity-75">
                Legacy of service, excellence in engineering, and a focus on industrial needs.
            </p>
        </div>
    </div>
</div>

<section id="mission-vision" class="py-5 bg-white">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">1. Mission & Vision</h2>
        </div>
        <div class="row g-4 mt-2">
            <div class="col-md-6">
                <div class="p-5 bg-light shadow-sm h-100 text-center border-top border-success border-4 rounded-0">
                    <h4 class="fw-bold text-success text-uppercase mb-4">Our Vision</h4>
                    <p class="small text-muted mb-1">TO</p>
                    <h5 class="fw-bold text-dark mb-1">PRODUCE ENTREPRENEURS</h5>
                    <p class="small text-muted mb-1">THE</p>
                    <h5 class="fw-bold text-dark mb-1">JOB PROVIDERS</h5>
                    <p class="small text-muted mb-1">NOT</p>
                    <h5 class="fw-bold text-dark mb-1">JOB SEEKERS</h5>
                </div>
            </div>
            <div class="col-md-6">
                <div class="p-5 bg-light shadow-sm h-100 border-top border-success border-4 rounded-0">
                    <h4 class="fw-bold text-success text-uppercase mb-4">Our Mission</h4>
                    <p class="text-muted fs-5 lh-base">
                        To provide Quality Education to students, equip them with advanced technological knowledge and practical training for effective productivity, while creating an open culture to harness creativity and innovation to be competitive in field.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="management" class="py-5 bg-dark text-white">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-warning border-3 d-inline-block pb-2 fs-4">2. Management Committee</h2>
        </div>
        
        <div class="row g-3 justify-content-center">
            <div class="col-lg-4 col-md-6">
                <div class="card bg-secondary bg-opacity-10 text-white border-0 shadow-sm h-100 rounded-0">
                    <div class="card-body d-flex align-items-center p-3">
                        <img src="https://via.placeholder.com/80" class="border border-warning border-2 me-3 rounded-0" style="width: 80px; height: 80px; object-fit: cover;" alt="President" />
                        <div>
                            <h6 class="fw-bold mb-0">Aftab Islam Agha</h6>
                            <small class="text-warning text-uppercase d-block mb-1" style="font-size: 0.7rem;">Hon. President</small>
                            <p class="mb-0 text-white-50 small" style="line-height: 1.2;">MSc (Engg), FICE (UK). Chartered Engineer.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="card bg-secondary bg-opacity-10 text-white border-0 shadow-sm h-100 rounded-0">
                    <div class="card-body d-flex align-items-center p-3">
                        <img src="https://via.placeholder.com/80" class="border border-warning border-2 me-3 rounded-0" style="width: 80px; height: 80px; object-fit: cover;" alt="Secretary" />
                        <div>
                            <h6 class="fw-bold mb-0">Engr. Mian Shahid Latif</h6>
                            <small class="text-warning text-uppercase d-block mb-1" style="font-size: 0.7rem;">Hon. Secretary</small>
                            <p class="mb-0 text-white-50 small" style="line-height: 1.2;">MSc (Engg). Technical Education Expert.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="card bg-secondary bg-opacity-10 text-white border-0 shadow-sm h-100 rounded-0">
                    <div class="card-body d-flex align-items-center p-3">
                        <img src="https://via.placeholder.com/80" class="border border-warning border-2 me-3 rounded-0" style="width: 80px; height: 80px; object-fit: cover;" alt="Principal" />
                        <div>
                            <h6 class="fw-bold mb-0">Prof. Dr. [Name]</h6>
                            <small class="text-warning text-uppercase d-block mb-1" style="font-size: 0.7rem;">Principal</small>
                            <p class="mb-0 text-white-50 small" style="line-height: 1.2;">Academic Head & Student Development.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div> </div> </section>

<section id="history" class="py-5 bg-light">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">3. History & Accreditations</h2>
        </div>
        <div class="row g-5 align-items-start">
            <div class="col-lg-7">
                <h3 class="fw-bold mb-4">A Legacy of Service</h3>
                <p class="text-muted fs-5 mb-4">
                    HIMA is a legacy project of <strong>Anjuman-i-Himayat-i-Islam</strong> (Est. 1884), the first Muslim NGO of Indo-Pak. 
                    Founded to protect the educational interests of Muslims, it continues to serve as a beacon of technical knowledge.
                </p>
                
                <a href="https://en.wikipedia.org/wiki/Anjuman-i-Himayat-i-Islam" target="_blank" class="btn btn-outline-success rounded-0 px-4 py-2 mb-4 fw-bold">
                    VIEW WIKIPEDIA
                </a>
            </div>

            <div class="col-lg-5">
                <div id="accreditation" class="bg-white p-4 shadow-sm border border-light rounded-0">
                    <h5 class="fw-bold text-uppercase mb-4 text-center">Accredited By</h5>
                    <div class="row g-2 text-center mb-4">
                        <div class="col-6"><div class="p-3 bg-light border rounded-0 fw-bold text-dark small">NTC</div></div>
                        <div class="col-6"><div class="p-3 bg-light border rounded-0 fw-bold text-dark small">GCUF</div></div>
                        <div class="col-6"><div class="p-3 bg-light border rounded-0 fw-bold text-dark small">PBTE</div></div>
                        <div class="col-6"><div class="p-3 bg-light border rounded-0 fw-bold text-dark small">PSDA</div></div>
                    </div>
                    <div class="p-3 bg-light text-center border-start border-warning border-3">
                        <p class="small text-muted mb-0 fst-italic">
                            Fully affiliated with Govt. College University Faisalabad and recognized by the National Technology Council.
                        </p>
                    </div>
                </div>
            </div>
        </div> </div> </section>

<div class="container-fluid bg-dark py-5 text-center">
    <div class="container py-3">
        <h3 class="text-white fw-bold mb-3">Shape Your Future at HIMA</h3>
        <p class="text-white-50 small mb-4">Admissions for 2026 BS Engineering & DAE Programs are now live.</p>
        <a href="Contact.aspx" class="btn btn-warning px-5 py-2 fw-bold rounded-0 text-uppercase">More Info</a>
    </div>
</div>
    <br />
    

</asp:Content>