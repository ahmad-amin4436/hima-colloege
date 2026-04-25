<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HIMACollegeWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid p-0">
    <div class="vh-100 d-flex align-items-center position-relative bg-dark text-white overflow-hidden">
        <div class="position-absolute top-0 start-0 w-100 h-100">
            <img src="https://images.unsplash.com/photo-1562774053-701939374585?auto=format&fit=crop&w=1920&q=80" 
                 class="w-100 h-100 opacity-50 border-0" style="object-fit: cover;" alt="HIMA Campus">
        </div>
        <div class="container position-relative">
            <div class="row">
                <div class="col-lg-8">
                    <span class="badge bg-success mb-3 px-3 py-2 rounded-0 text-uppercase fw-bold">Admission Open 2026</span>
                    <h1 class="display-2 fw-bold text-uppercase mb-4">Empowering the Next Generation of <span class="text-success">Engineers</span></h1>
                    <p class="lead mb-5 opacity-75">Join HIMA College of Engineering Technology and bridge the gap between academic theory and industrial practice.</p>
                    <div class="d-flex gap-3">
                        <a href="/Pages/Admissions.aspx" class="btn btn-outline-light btn-lg rounded-0 px-5 py-3 fw-bold text-uppercase">Apply Now</a>
                        <a href="/Pages/Programs.aspx" class="btn btn-outline-light btn-lg rounded-0 px-5 py-3 fw-bold text-uppercase">Explore Programs</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container py-5 my-5">
    <div class="row align-items-center g-5">
        <div class="col-lg-6">
            <div class="position-relative">
                <img src="https://images.unsplash.com/photo-1523240795612-9a054b0db644?auto=format&fit=crop&w=800&q=80" 
                     class="img-fluid shadow-lg rounded-0" alt="About HIMA">
                <div class="bg-success text-white p-4 position-absolute bottom-0 end-0 d-none d-md-block mb-n4 me-n4 shadow">
                    <h2 class="fw-bold mb-0">15+</h2>
                    <small class="text-uppercase fw-bold">Years of Excellence</small>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <h6 class="text-success fw-bold text-uppercase mb-3">About HIMA</h6>
            <h2 class="display-5 fw-bold mb-4">A Legacy of Technical Education</h2>
            <p class="text-muted mb-4 lead">Founded with the mission to create "Job Providers, not Job Seekers," HIMA College stands as a premier institution for engineering and vocational training in Lahore.</p>
            <a href="/Pages/About.aspx" class="btn btn-dark rounded-0 px-4 py-2 fw-bold text-uppercase small shadow-sm">Our Full Story <i class="fas fa-arrow-right ms-2"></i></a>
        </div>
    </div>
</div>

<div class="bg-light py-5">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h6 class="text-success fw-bold text-uppercase">Our Expertise</h6>
            <h2 class="display-6 fw-bold">Academic Disciplines</h2>
        </div>
        <div class="row g-4 text-center">
            <div class="col-md-4">
                <div class="bg-white p-5 shadow-sm border-bottom border-success border-4 h-100">
                    <i class="fas fa-microchip fa-3x text-success mb-4"></i>
                    <h5 class="fw-bold text-uppercase">IT & Computer Science</h5>
                    <p class="small text-muted mb-4">Modern CIT labs and cutting-edge software development training.</p>
                    <a href="/Pages/Programs.aspx#it-programs" class="text-success fw-bold text-decoration-none small">Explore Department <i class="fas fa-chevron-right ms-1"></i></a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="bg-white p-5 shadow-sm border-bottom border-success border-4 h-100">
                    <i class="fas fa-drafting-pencil fa-3x text-success mb-4"></i>
                    <h5 class="fw-bold text-uppercase">Civil & Mechanical</h5>
                    <p class="small text-muted mb-4">Hands-on engineering workshops and industry-standard training.</p>
                    <a href="/Pages/Programs.aspx#bs-programs" class="text-success fw-bold text-decoration-none small">Explore Department <i class="fas fa-chevron-right ms-1"></i></a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="bg-white p-5 shadow-sm border-bottom border-success border-4 h-100">
                    <i class="fas fa-tools fa-3x text-success mb-4"></i>
                    <h5 class="fw-bold text-uppercase">Vocational Hub</h5>
                    <p class="small text-muted mb-4">Empowering skills through specialized short courses and diplomas.</p>
                    <a href="/Pages/Programs.aspx#vocational-hub" class="text-success fw-bold text-decoration-none small">Explore Department <i class="fas fa-chevron-right ms-1"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid p-0 bg-dark overflow-hidden">
    <div class="row g-0">
        <div class="col-lg-6 text-white p-5 d-flex flex-column justify-content-center">
            <div class="px-md-5">
                <h2 class="display-5 fw-bold mb-4">Learn From <br/> Industry Veterans</h2>
                <p class="lead opacity-75 mb-5">Our expert faculty across 5 specialized departments brings real-world experience into the classroom.</p>
                <div class="row g-3 mb-5">
                    <div class="col-6"><div class="border-start border-success border-3 ps-3 small text-uppercase fw-bold opacity-75">Dept. of Civil</div></div>
                    <div class="col-6"><div class="border-start border-success border-3 ps-3 small text-uppercase fw-bold opacity-75">Dept. of Electrical</div></div>
                    <div class="col-6"><div class="border-start border-success border-3 ps-3 small text-uppercase fw-bold opacity-75">Dept. of CIT</div></div>
                    <div class="col-6"><div class="border-start border-success border-3 ps-3 small text-uppercase fw-bold opacity-75">Dept. of HVAC&R</div></div>
                </div>
                <a href="/Pages/Faculty.aspx" class="btn btn-outline-success btn-lg rounded-0 px-5 py-3 fw-bold text-uppercase">Meet our Faculty</a>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="row g-0 h-100">
                <div class="col-12">
                    <img src="https://img.freepik.com/free-photo/researchers-looking-alternative-energy-souces_23-2149311470.jpg?semt=ais_hybrid&w=740&q=80" 
                         class="w-100 h-100" style="object-fit: cover;" alt="Faculty Session">
                </div>
                
            </div>
        </div>
    </div>
</div>
    <br />

<div class="bg-success text-white text-center py-5">
    <div class="container py-5">
        <h2 class="display-6 fw-bold mb-3">Ready to Start Your Career?</h2>
        <p class="lead mb-5 opacity-90">Our admission counselors are ready to help you plan your future at HIMA.</p>
        <div class="d-flex justify-content-center gap-3">
            <a href="/Pages/Contact.aspx" class="btn btn-dark btn-lg rounded-0 px-5 py-3 fw-bold text-uppercase shadow">Get in Touch</a>
            <a href="/Pages/Admissions.aspx" class="btn btn-white btn-lg rounded-0 px-5 py-3 fw-bold text-uppercase bg-white text-success">Apply Today</a>
        </div>
    </div>
</div>
    <br />

</asp:Content>