<%@ Page Title="Accreditations" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accre.aspx.cs" Inherits="HIMACollegeWebsite.Pages.Accre" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid p-0">
 <div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute w-100 h-100">
            <img src="/Assets/carousel1.png" 
                 class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
        </div>
        
        <div class="container position-relative">
            <h1 class="display-3 fw-bold text-uppercase mb-3">Accreditations</h1>
            <p class="lead col-md-8 mx-auto fs-4 opacity-75">
                Defining engineering quality through world-class certifications and continuous academic innovation.
            </p>
        </div>
    </div>
</div>
    </div>

<section class="py-5 bg-light">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase d-inline-block border-bottom border-success border-3 pb-2">Academic & Technical Affiliations</h2>
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
                            <i class="fas fa-tools fa-3x text-success"></i>
                        </div>
                        <h3 class="fw-bold mb-1">TEVTA</h3>
                        <p class="text-muted small fw-bold text-uppercase mb-4">Technical Education Authority</p>
                        <p class="text-muted mb-0 small lh-base">
                            Recognized for the <strong>Diploma of Associate Engineering (DAE)</strong>. Ensuring our students receive certified technical training recognized by the industrial sector.
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
                            <i class="fas fa-certificate fa-3x text-success"></i>
                        </div>
                        <h3 class="fw-bold mb-1">PSDA</h3>
                        <p class="text-muted small fw-bold text-uppercase mb-4">Punjab Skill Development Authority</p>
                        <p class="text-muted mb-0 small lh-base">
                            Accredited for <strong>Vocational Training and Short Courses</strong>. Providing practical skills for immediate employment in the modern workforce.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="mt-5 p-4 bg-white border-start border-success border-4 shadow-sm"
             style="transition: all 0.3s ease;"
             onmouseover="this.classList.replace('shadow-sm', 'shadow');"
             onmouseout="this.classList.replace('shadow', 'shadow-sm');">
            <div class="row align-items-center">
                <div class="col-auto">
                    <i class="fas fa-shield-alt text-success fa-2x"></i>
                </div>
                <div class="col">
                    <p class="mb-0 text-muted fst-italic small">
                        All programs operate under the strict quality assurance frameworks of the National Technology Council (NTC) and the Higher Education Commission (HEC) of Pakistan.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>


</asp:Content>