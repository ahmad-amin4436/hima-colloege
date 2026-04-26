<%@ Page Title="Managing Bodies" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagingBodies.aspx.cs" Inherits="HIMACollegeWebsite.Pages.ManagingBodies" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute w-100 h-100">
            <img src="/Assets/Carousel1.png" class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
        </div>
        
        <div class="container position-relative">
            <h1 class="display-3 fw-bold text-uppercase mb-3">Managing Bodies</h1>
            <p class="lead col-md-8 mx-auto fs-4 opacity-75">
                nsuring academic quality and industrial relevance through rigorous institutional governance and professional oversight.
            </p>
        </div>
    </div>
</div>

<section class="py-5 bg-light">
    <div class="container py-5">
        
        <div class="mb-5">
            <h2 class="fw-bold text-dark border-start border-success border-4 ps-3 text-uppercase">Management Committee</h2>
            <p class="text-muted small">Leading the strategic direction and industrial integration of the institution.</p>
        </div>

        <div class="row g-4 mb-5">
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm rounded-0 overflow-hidden h-100" 
                     style="transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);"
                     onmouseover="this.style.transform='translateY(-10px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('img').style.transform='scale(1.05)';" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('img').style.transform='scale(1)';" >
                    <div class="row g-0 h-100">
                        <div class="col-md-5 overflow-hidden">
                            <img src="/Assets/President_Aftab.png" class="img-fluid w-100 h-100 object-fit-cover transition-all" style="transition: transform 0.6s ease;" alt="Hon. President" onerror="this.src='https://via.placeholder.com/400x500?text=Hon.+President'" />
                        </div>
                        <div class="col-md-7 d-flex align-items-center">
                            <div class="card-body p-4">
                                <h4 class="fw-bold mb-1">Aftab Islam Agha</h4>
                                <p class="text-success small fw-bold text-uppercase mb-3">Hon. President</p>
                                <p class="small text-muted mb-3 lh-base">
                                    Chartered Engineer, MSc (Engg), FICE (UK), FIE (Pak). Associate Institute of Municipal Engineers and Institute of Arbitrators (UK).
                                </p>
                                <div class="bg-light p-2 small border-start border-warning border-3 transition-all">
                                    <i class="fas fa-certificate text-warning me-2"></i>Executive Governance
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card border-0 shadow-sm rounded-0 overflow-hidden h-100" 
                     style="transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);"
                     onmouseover="this.style.transform='translateY(-10px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('img').style.transform='scale(1.05)';" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('img').style.transform='scale(1)';" >
                    <div class="row g-0 h-100">
                        <div class="col-md-5 overflow-hidden">
                            <img src="/Assets/Secretary_Shahid.png" class="img-fluid w-100 h-100 object-fit-cover transition-all" style="transition: transform 0.6s ease;" alt="Hon. Secretary" onerror="this.src='https://via.placeholder.com/400x500?text=Hon.+Secretary'" />
                        </div>
                        <div class="col-md-7 d-flex align-items-center">
                            <div class="card-body p-4">
                                <h4 class="fw-bold mb-1">Engr. Mian Shahid Latif</h4>
                                <p class="text-success small fw-bold text-uppercase mb-3">Hon. Secretary</p>
                                <p class="small text-muted mb-3 lh-base">
                                    MSc (Engineering). Expert in technical curriculum development and ensuring bridging the gap between theory and industrial practice.
                                </p>
                                <div class="bg-light p-2 small border-start border-warning border-3 transition-all">
                                    <i class="fas fa-gear text-warning me-2"></i>Technical Operations
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mb-5 pt-4">
            <h2 class="fw-bold text-dark border-start border-success border-4 ps-3 text-uppercase">Academic Leadership</h2>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card border-0 shadow-sm rounded-0 overflow-hidden" 
                     style="transition: all 0.4s ease;"
                     onmouseover="this.style.transform='scale(1.02)'; this.classList.replace('shadow-sm', 'shadow-lg');" 
                     onmouseout="this.style.transform='scale(1)'; this.classList.replace('shadow-lg', 'shadow-sm');" >
                    <div class="row g-0">
                        <div class="col-md-4 overflow-hidden">
                            <img src="/Assets/Principal_Image.png" class="img-fluid w-100 h-100 object-fit-cover transition-all" style="transition: transform 0.8s ease;" alt="Principal" onerror="this.src='https://via.placeholder.com/400x500?text=Principal+HIMA'" />
                        </div>
                        <div class="col-md-8 d-flex align-items-center">
                            <div class="card-body p-4 p-lg-5">
                                <h3 class="fw-bold mb-1">Principal</h3>
                                <p class="text-success small fw-bold text-uppercase mb-3">Office of the Principal</p>
                                <p class="text-muted mb-4">
                                    The Principal’s office oversees the daily academic operations, ensuring that the mission to produce "Job Providers, Not Job Seekers" is reflected in every department and laboratory activity.
                                </p>
                                <a href="Contact.aspx" class="btn btn-dark btn-sm rounded-0 px-4 py-2 fw-bold text-uppercase transition-all" 
                                   onmouseover="this.style.backgroundColor='#198754'; this.style.borderColor='#198754';" 
                                   onmouseout="this.style.backgroundColor='#212529'; this.style.borderColor='#212529';">
                                   Contact Office
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
</asp:Content>