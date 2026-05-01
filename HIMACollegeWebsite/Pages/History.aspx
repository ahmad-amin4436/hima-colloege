<%@ Page Title="History - HIMA College" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="HIMACollegeWebsite.Pages.History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <div class="container-fluid p-0">
        <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
            <div class="position-absolute w-100 h-100">
                <img src="/Assets/Carousel1.png" class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
                <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
            </div>
            
            <div class="container position-relative">
                <h1 class="display-3 fw-bold text-uppercase mb-3">Our History</h1>
                <p class="lead col-md-8 mx-auto fs-4 opacity-75">
                    Rooted in service, built for excellence, and focused on industrial innovation since 1884.
                </p>
            </div>
        </div>
    </div>

    <!-- Content Section -->
    <section class="py-5 bg-white">
        <div class="container py-5">
            <div class="row g-5">
                <!-- Left Column -->
                <div class="col-lg-7">
                    
                    <!-- SECTION 1: Brief Introduction (College Specific) -->
                    <div class="mb-5">
                        <h2 class="fw-bold text-success border-start border-4 ps-3 mb-4 text-uppercase">Brief Introduction</h2>
                        <p class="text-muted fs-5 lh-lg mb-3">
                            Anjuman Himayat-I-Islam, over century old Muslim NGO in the Indo-Pak Subcontinent in association 
                            with Muhammad Amin Wakf Estate initially established Polytechnic and Vocational Institute in its 
                            old premises inside Dar-ul-Shafqat commonly known Yateem Khana, in the year 1962.
                        </p>

                        <div class="collapse" id="detailedIntro">
                            <p class="text-muted fs-5 lh-lg">
                                Later the Polytechnic and Vocational Institute was shifted to a purpose built campus spread over an area of 
                                more than eight Kanals having purpose built building and spacious playground. It is the only institute 
                                in the town having its own purpose built campus and vast playgrounds. Today more than 600 
                                students are enrolled in this Institute in various technical courses.
                            </p>
                            <p class="text-muted fs-5 lh-lg">
                                It has been a pioneer in providing quality technical and vocational education. We offer specialized programs in 
                                Electrical, Civil, Mechanical, Computer Information Technology, and HVAC&R, equipping students with the practical 
                                skills needed for today's dynamic industrial requirements. 
                            </p>
                            <p class="text-muted fs-5 lh-lg">
                                Realizing the need and requirements of higher education the management has decided to upgrade 
                                the Polytechnic to Degree College, alongside the existing Polytechnic and Vocational Institute. 
                                <strong>HIMA College of Engineering Technology</strong> offers Bachelor's degree programs affiliated with 
                                Govt. College University Faisalabad (GCUF) and accredited by the National Technology Council.
                            </p>
                        </div>

                        <a class="btn btn-success rounded-0 px-4 py-2 fw-bold text-uppercase mt-2" 
                           data-bs-toggle="collapse" 
                           href="#detailedIntro" 
                           role="button" 
                           aria-expanded="false" 
                           onclick="this.innerHTML = (this.innerHTML.includes('View Full Info') ? 'Show Less <i class=\'fas fa-chevron-up ms-1\'></i>' : 'View Full Info <i class=\'fas fa-chevron-down ms-1\'></i>')">
                            View Full Info <i class="fas fa-chevron-down ms-1"></i>
                        </a>
                    </div>

                    <hr class="my-5 opacity-25" />

                    <!-- SECTION 2: The Himalayan Legacy (Parent Organization) -->
                    <div class="mb-5">
                        <h2 class="fw-bold text-dark border-start border-4 border-dark ps-3 mb-4 text-uppercase">The HIMALAYAN Legacy</h2>
                        <p class="text-muted fs-5 lh-lg">
                            HIMA College of Engineering Technology is a premier project of <strong>Anjuman-i-Himayat-i-Islam</strong>. 
                            Established in 1884, the Anjuman is one of the most historic and influential organizations in the subcontinent, 
                            founded originally to protect and promote the educational interests and social welfare of the community.
                        </p>
                        
                        <div class="mt-4">
                            <a href="https://en.wikipedia.org/wiki/Anjuman-i-Himayat-i-Islam" target="_blank" class="btn btn-outline-dark rounded-0 px-4 py-2 fw-bold text-uppercase">
                                <i class="fab fa-wikipedia-w me-2"></i> Read Wikipedia History
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Right Column: Vision & Mission Cards -->
                <div class="col-lg-5">
                    <!-- Vision Card -->
                    <div class="card border-0 shadow-lg rounded-0 mb-4 overflow-hidden"
                         style="transition: all 0.3s ease-in-out; cursor: default;"
                         onmouseover="this.style.transform='translateY(-10px)'; this.querySelector('.bg-dark').classList.replace('bg-dark', 'bg-warning'); this.querySelector('.text-warning').classList.replace('text-warning', 'text-dark');" 
                         onmouseout="this.style.transform='translateY(0px)'; this.querySelector('.bg-warning').classList.replace('bg-warning', 'bg-dark'); this.querySelector('.text-dark').classList.replace('text-dark', 'text-warning');">
                        
                        <div class="bg-dark p-3 transition-all" style="transition: background 0.3s ease;">
                            <h5 class="text-warning fw-bold text-uppercase mb-0 text-center small">Our Vision</h5>
                        </div>
                        <div class="card-body p-4 text-center bg-light">
                            <p class="small text-muted mb-1 text-uppercase">To Produce</p>
                            <h4 class="fw-bold text-dark mb-1 text-uppercase">Entrepreneurs</h4>
                            <p class="small text-muted mb-1 text-uppercase">The</p>
                            <h4 class="fw-bold text-success mb-1 text-uppercase">Job Providers</h4>
                            <p class="small text-muted mb-1 text-uppercase">Not</p>
                            <h4 class="fw-bold text-danger mb-0 text-uppercase">Job Seekers</h4>
                        </div>
                    </div>

                    <!-- Mission Card -->
                    <div class="card border-0 shadow-lg rounded-0 overflow-hidden"
                         style="transition: all 0.3s ease-in-out; cursor: default;"
                         onmouseover="this.style.transform='translateY(-10px)';" 
                         onmouseout="this.style.transform='translateY(0px)';" >
                        
                        <div class="bg-success p-3 text-center">
                            <h5 class="text-white fw-bold text-uppercase mb-0 small">Our Mission</h5>
                        </div>
                        <div class="card-body p-4 bg-white">
                            <p class="text-muted mb-0 lh-base text-center fst-italic">
                                "To provide Quality Education to students, equip them with advanced technological knowledge 
                                and practical training for effective productivity, while creating an open culture within 
                                the institution to harness creativity and innovation to be competitive in the field."
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>