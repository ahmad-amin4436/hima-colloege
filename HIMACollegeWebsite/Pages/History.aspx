<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="HIMACollegeWebsite.Pages.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute w-100 h-100">
            <img src="/Assets/Carousel1.png"
                 class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
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

<section class="py-5 bg-white">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-7">
                <h2 class="fw-bold text-success border-start border-4 ps-3 mb-4 text-uppercase">The HIMALAYAN Legacy</h2>
                <p class="text-muted fs-5 lh-lg">
                    HIMA College of Engineering Technology is a premier project of <strong>Anjuman-i-Himayat-i-Islam</strong>. Established in 1884, the Anjuman is one of the most historic and influential organizations in the subcontinent, founded originally to protect and promote the educational interests and social welfare of the community.
                </p>
                <p class="text-muted fs-5 lh-lg mb-4">
                    Continuing this prestigious legacy, HIMA focuses on bridging the gap between academic theory and industrial practice. We remain dedicated to providing high-quality technical education that empowers the youth of Lahore and beyond to meet the evolving demands of the global engineering landscape.
                </p>

                <div class="mb-5">
                    <a href="https://en.wikipedia.org/wiki/Anjuman-i-Himayat-i-Islam" target="_blank" class="btn btn-outline-success rounded-0 px-4 py-2 fw-bold text-uppercase">
                        <i class="fab fa-wikipedia-w me-2"></i> Read the Full History
                    </a>
                </div>

                <div class="p-4 bg-light border-start border-success border-4 shadow-sm">
                    <h5 class="fw-bold text-dark mb-2 text-uppercase">Educational Impact</h5>
                    <p class="text-muted mb-0">
                        With a steadfast focus on quality education, we strive to produce competent and responsible graduates equipped with advanced technological knowledge for effective productivity.
                    </p>
                </div>
            </div>

           <div class="col-lg-5">
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

    <div class="card border-0 shadow-lg rounded-0 overflow-hidden"
         style="transition: all 0.3s ease-in-out; cursor: default;"
         onmouseover="this.style.transform='translateY(-10px)';" 
         onmouseout="this.style.transform='translateY(0px)';" >
        
        <div class="bg-success p-3 text-center">
            <h5 class="text-white fw-bold text-uppercase mb-0 small">Our Mission</h5>
        </div>
        <div class="card-body p-4 bg-white">
            <p class="text-muted mb-0 lh-base text-center italic">
                "To provide Quality Education to students, equip them with advanced technological knowledge and practical training for effective productivity, while creating an open culture within the institution to harness creativity and innovation to be competitive in the field."
            </p>
        </div>
    </div>
</div>
                </div>
            </div>
        </div>
    </div>
</section>
</asp:Content>
