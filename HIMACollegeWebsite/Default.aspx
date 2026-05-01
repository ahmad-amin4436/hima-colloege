<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HIMACollegeWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid p-0">
    <div id="heroCarousel" class="carousel slide vh-100 position-relative bg-dark text-white overflow-hidden" 
         data-bs-ride="carousel" data-bs-pause="false">
        
        <div class="carousel-inner h-100">
            <div class="carousel-item active h-100" data-bs-interval="3000">
                <img src="Assets/carousel1.png" class="d-block w-100 h-100 opacity-50" style="object-fit: cover;" alt="HIMA Campus 1">
            </div>
            <div class="carousel-item h-100" data-bs-interval="3000">
                <img src="Assets/carousel2.jpeg" class="d-block w-100 h-100 opacity-50" style="object-fit: cover;" alt="HIMA Campus 2">
            </div>
            <div class="carousel-item h-100" data-bs-interval="3000">
                <img src="Assets/carousel3.jpeg" class="d-block w-100 h-100 opacity-50" style="object-fit: cover;" alt="HIMA Campus 3">
            </div>
        </div>

        <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="z-index: 10;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <span class="badge bg-success mb-3 px-3 py-2 rounded-0 text-uppercase fw-bold shadow">Admission Open  <%= DateTime.Now.Year %></span>
                        <h1 class="display-2 fw-bold text-uppercase mb-4">Empowering the Next Generation of <span class="text-success">Engineers</span></h1>
                        <p class="lead mb-5 opacity-75"> With a steadfast focus on quality education, we strive to produce competent and responsible graduates as per industrial needs.</p>
                        <div class="d-flex gap-3">
                            <a href="/Pages/Admissions.aspx" class="btn btn-outline-light btn-lg rounded-0 px-5 py-3 fw-bold text-uppercase shadow-sm">Apply Now</a>
                        </div>
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
                <div class="ratio ratio-4x3 shadow-lg border border-success border-0 overflow-hidden">
                    <img src="Assets/carousel1.png" 
                         class="img-fluid rounded-0" 
                         style="object-fit: cover; object-position: center; transition: transform 0.5s ease;" 
                         onmouseover="this.style.transform='scale(1.1)';" 
                         onmouseout="this.style.transform='scale(1.0)';"
                         alt="About HIMA">
                </div>
                
            </div>
        </div>
        <div class="col-lg-6">
            <h6 class="text-success fw-bold text-uppercase mb-3">About HIMA</h6>
            <h2 class="display-5 fw-bold mb-4">A Legacy of Technical Education</h2>
            <p class="text-muted mb-4 lead">Since 1962, our institute has empowered over 600 students through pioneer technical and vocational training within a modern, purpose-built campus.
Now evolved into HIMA College of Engineering Technology, we offer GCUF-affiliated Bachelor’s degrees designed to meet modern industrial standards.
Our mission is to produce industry-ready graduates and entrepreneurs through hands-on excellence and NTC-accredited academic frameworks.</p>
            <a href="/Pages/History.aspx" class="btn btn-dark rounded-0 px-4 py-2 fw-bold text-uppercase small shadow-sm">
                Our Full Story <i class="fas fa-arrow-right ms-2"></i>
            </a>
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
                <div class="card h-100 border-0 shadow-sm p-5 border-bottom border-success border-4 rounded-0" 
                     style="transition: all 0.3s ease-in-out; cursor: pointer;"
                     onmouseover="this.style.transform='translateY(-15px)'; this.classList.remove('shadow-sm'); this.classList.add('shadow-lg');" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.remove('shadow-lg'); this.classList.add('shadow-sm');">
                    <div class="card-body p-0">
                        <i class="fas fa-laptop-code fa-3x text-success mb-4"></i>
                        <h5 class="fw-bold text-uppercase">IT & Computer Science</h5>
                        <p class="small text-muted mb-4">Modern CIT labs and cutting-edge software development training.</p>
                        <a href="/Pages/BSPrograms.aspx#it-programs" class="link-success fw-bold text-decoration-none small stretched-link">Explore Department <i class="fas fa-chevron-right ms-1"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card h-100 border-0 shadow-sm p-5 border-bottom border-success border-4 rounded-0" 
                     style="transition: all 0.3s ease-in-out; cursor: pointer;"
                     onmouseover="this.style.transform='translateY(-15px)'; this.classList.remove('shadow-sm'); this.classList.add('shadow-lg');" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.remove('shadow-lg'); this.classList.add('shadow-sm');">
                    <div class="card-body p-0">
                        <i class="fas fa-tools fa-3x text-success mb-4"></i>
                        <h5 class="fw-bold text-uppercase">Civil & Mechanical</h5>
                        <p class="small text-muted mb-4">Hands-on engineering workshops and industry-standard training.</p>
                        <a href="/Pages/Civil.aspx#bs-programs" class="link-success fw-bold text-decoration-none small stretched-link">Explore Department <i class="fas fa-chevron-right ms-1"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card h-100 border-0 shadow-sm p-5 border-bottom border-success border-4 rounded-0" 
                     style="transition: all 0.3s ease-in-out; cursor: pointer;"
                     onmouseover="this.style.transform='translateY(-15px)'; this.classList.remove('shadow-sm'); this.classList.add('shadow-lg');" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.remove('shadow-lg'); this.classList.add('shadow-sm');">
                    <div class="card-body p-0">
                        <i class="fas fa-drafting-compass fa-3x text-success mb-4"></i>
                        <h5 class="fw-bold text-uppercase">Vocational Hub</h5>
                        <p class="small text-muted mb-4">Empowering skills through specialized short courses and diplomas.</p>
                        <a href="/Pages/Vocational.aspx#vocational-hub" class="link-success fw-bold text-decoration-none small stretched-link">Explore Department <i class="fas fa-chevron-right ms-1"></i></a>
                    </div>
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
            <img src="Assets/Carousel3.jpeg" class="w-100 h-100 opacity-75" style="object-fit: cover; min-height: 400px;" alt="Faculty Session">
        </div>
    </div>
</div>

<div class="bg-success text-white text-center py-5 mt-5">
    <div class="container py-5">
        <h2 class="display-6 fw-bold mb-3">Ready to Start Your Career?</h2>
        <p class="lead mb-5 opacity-90">Our admission counselors are ready to help you plan your future at HIMA.</p>
        <div class="d-flex justify-content-center gap-3">
            <a href="/Pages/Contact.aspx" class="btn btn-dark btn-lg rounded-0 px-5 py-3 fw-bold text-uppercase shadow">Get in Touch</a>
            <a href="/Pages/Admissions.aspx" class="btn btn-white btn-lg rounded-0 px-5 py-3 fw-bold text-uppercase bg-white text-success shadow">Apply Today</a>
        </div>
    </div>
</div>
    <br />

</asp:Content>