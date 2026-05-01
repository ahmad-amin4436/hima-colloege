<%@ Page Title="Accreditations" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accre.aspx.cs" Inherits="HIMACollegeWebsite.Pages.Accre" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute w-100 h-100">
            <img src="/Assets/carousel1.png" class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
        </div>
        
        <div class="container position-relative">
            <h1 class="display-3 fw-bold text-uppercase mb-3">Accreditations</h1>
            <p class="lead col-md-8 mx-auto fs-4 opacity-75">
               Certified quality and continuous academic innovation.
            </p>
        </div>
    </div>
</div>

<section class="py-5 bg-light">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase d-inline-block border-bottom border-success border-3 pb-2">Academic & Technical Affiliations</h2>
        </div>

        <div class="row g-4 justify-content-center mb-4">
            <div class="col-lg-4">
                <div class="card h-100 border-0 border-top border-success border-4 shadow-sm rounded-0 transition-all"
                     style="transition: all 0.3s ease-in-out;"
                     onmouseover="this.style.transform='translateY(-15px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('.icon-box').classList.replace('bg-light', 'bg-success'); this.querySelector('i').classList.replace('text-success', 'text-white');" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('.icon-box').classList.replace('bg-success', 'bg-light'); this.querySelector('i').classList.replace('text-white', 'text-success');">
                    <div class="card-body p-5 text-center">
                        <div class="icon-box d-inline-block p-4 rounded-circle bg-light mb-4 transition-all" style="transition: all 0.3s ease;">
                            <i class="fas fa-id-card fa-3x text-success"></i>
                        </div>
                        <h3 class="fw-bold mb-1">PSDA</h3>
                        <p class="text-muted small fw-bold text-uppercase mb-4">Punjab Skill Development Authority</p>
                        <p class="text-muted mb-0 small lh-base">
                            Official <strong>Registration</strong> for skill development programs. Ensuring all vocational training meets provincial regulatory standards.
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card h-100 border-0 border-top border-success border-4 shadow-sm rounded-0 transition-all"
                     style="transition: all 0.3s ease-in-out;"
                     onmouseover="this.style.transform='translateY(-15px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('.icon-box').classList.replace('bg-light', 'bg-success'); this.querySelector('i').classList.replace('text-success', 'text-white');" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('.icon-box').classList.replace('bg-success', 'bg-light'); this.querySelector('i').classList.replace('text-white', 'text-success');">
                    <div class="card-body p-5 text-center">
                        <div class="icon-box d-inline-block p-4 rounded-circle bg-light mb-4 transition-all" style="transition: all 0.3s ease;">
                            <i class="fas fa-file-contract fa-3x text-success"></i>
                        </div>
                        <h3 class="fw-bold mb-1">PBTE</h3>
                        <p class="text-muted small fw-bold text-uppercase mb-4">Punjab Board of Technical Education</p>
                        <p class="text-muted mb-0 small lh-base">
                            Affiliated for <strong>DAE, Short Courses, and Vocational Training</strong>. We provide industry-standard technical education recognized across Pakistan.
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card h-100 border-0 border-top border-success border-4 shadow-sm rounded-0 transition-all"
                     style="transition: all 0.3s ease-in-out;"
                     onmouseover="this.style.transform='translateY(-15px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('.icon-box').classList.replace('bg-light', 'bg-success'); this.querySelector('i').classList.replace('text-success', 'text-white');" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('.icon-box').classList.replace('bg-success', 'bg-light'); this.querySelector('i').classList.replace('text-white', 'text-success');">
                    <div class="card-body p-5 text-center">
                        <div class="icon-box d-inline-block p-4 rounded-circle bg-light mb-4 transition-all" style="transition: all 0.3s ease;">
                            <i class="fas fa-award fa-3x text-success"></i>
                        </div>
                        <h3 class="fw-bold mb-1">NAVTECH</h3>
                        <p class="text-muted small fw-bold text-uppercase mb-4">National Vocational & Technical Training</p>
                        <p class="text-muted mb-0 small lh-base">
                            Accredited for <strong>Vocational and Technical Excellence</strong>. Our partnership ensures national recognition for our technical skill graduates.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row g-4 justify-content-center">
            <div class="col-lg-4">
                <div class="card h-100 border-0 border-top border-success border-4 shadow-sm rounded-0 transition-all"
                     style="transition: all 0.3s ease-in-out;"
                     onmouseover="this.style.transform='translateY(-15px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('.icon-box').classList.replace('bg-light', 'bg-success'); this.querySelector('i').classList.replace('text-success', 'text-white');" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('.icon-box').classList.replace('bg-success', 'bg-light'); this.querySelector('i').classList.replace('text-white', 'text-success');">
                    <div class="card-body p-5 text-center">
                        <div class="icon-box d-inline-block p-4 rounded-circle bg-light mb-4 transition-all" style="transition: all 0.3s ease;">
                            <i class="fas fa-university fa-3x text-success"></i>
                        </div>
                        <h3 class="fw-bold mb-1">GCUF</h3>
                        <p class="text-muted small fw-bold text-uppercase mb-4">Govt. College University Faisalabad</p>
                        <p class="text-muted mb-0 small lh-base">
                            Officially affiliated for <strong>BS Engineering Technology</strong> degree programs. Our curriculum is aligned with university standards for high-level academic achievement.
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card h-100 border-0 border-top border-success border-4 shadow-sm rounded-0 transition-all"
                     style="transition: all 0.3s ease-in-out;"
                     onmouseover="this.style.transform='translateY(-15px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('.icon-box').classList.replace('bg-light', 'bg-success'); this.querySelector('i').classList.replace('text-success', 'text-white');" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('.icon-box').classList.replace('bg-success', 'bg-light'); this.querySelector('i').classList.replace('text-white', 'text-success');">
                    <div class="card-body p-5 text-center">
                        <div class="icon-box d-inline-block p-4 rounded-circle bg-light mb-4 transition-all" style="transition: all 0.3s ease;">
                            <i class="fas fa-graduation-cap fa-3x text-success"></i>
                        </div>
                        <h3 class="fw-bold mb-1">DPI</h3>
                        <p class="text-muted small fw-bold text-uppercase mb-4">Directorate of Public Instruction</p>
                        <p class="text-muted mb-0 small lh-base">
                            Full <strong>College Registration</strong> under DPI, maintaining the highest standards for educational infrastructure and institutional governance.
                        </p>
                    </div>
                </div>
            </div>

           <div class="col-lg-4">
    <div class="card h-100 border-0 border-top border-success border-4 shadow-sm rounded-0 transition-all"
         style="transition: all 0.3s ease-in-out;"
         onmouseover="this.style.transform='translateY(-15px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('.icon-box').classList.replace('bg-light', 'bg-success'); this.querySelector('i').classList.replace('text-success', 'text-white');" 
         onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('.icon-box').classList.replace('bg-success', 'bg-light'); this.querySelector('i').classList.replace('text-white', 'text-success');">
        <div class="card-body p-5 text-center">
            <div class="icon-box d-inline-block p-4 rounded-circle bg-light mb-4 transition-all" style="transition: all 0.3s ease;">
                <i class="fas fa-check-double fa-3x text-success"></i>
            </div>
            <h3 class="fw-bold mb-1">NTC & HEC</h3>
            <p class="text-muted small fw-bold text-uppercase mb-4">National Technology Council & HEC</p>
            <p class="text-muted mb-0 small lh-base">
                Official <strong>Accreditation for BS Programs</strong>. Ensuring all engineering technology degrees meet the quality assurance benchmarks of HEC Pakistan.
            </p>
        </div>
    </div>
</div>
            </div>
        </div>
    </div>
</section>

</asp:Content>