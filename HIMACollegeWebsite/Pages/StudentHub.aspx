<%@ Page Title="Student Hub" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="StudentHub.aspx.cs" 
    Inherits="HIMACollegeWebsite.StudentHub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute w-100 h-100">
            <img src="/Assets/carousel1.png" class="w-100 h-100 object-fit-cover" alt="HIMA Student Hub" />
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
        </div>
        <div class="container position-relative">
            <h1 class="display-3 fw-bold text-uppercase mb-3">Student Hub</h1>
            <p class="lead col-md-8 mx-auto fs-4 opacity-75">
                Cultivating leadership, character, and industrial excellence through a vibrant campus life.
            </p>
        </div>
    </div>
</div>

<section id="life-campus" class="py-5 bg-white">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">1. Life in Campus</h2>
        </div>
        <div class="row g-5 align-items-center">
            <div class="col-lg-6">
                <div class="ratio ratio-16x9 shadow-sm overflow-hidden border border-success border-0">
                    <img src="/Assets/Carousel2.jpeg" 
                         style="transition: transform 0.5s ease;"
                         onmouseover="this.style.transform='scale(1.05)';"
                         onmouseout="this.style.transform='scale(1)';"
                         class="object-fit-cover" alt="Campus Life" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="ps-lg-4">
                    <h3 class="fw-bold text-dark text-uppercase mb-4">A Culture of Excellence</h3>
                    <p class="text-muted fs-5 lh-base mb-4">
                        HIMA offers a dynamic environment where academic rigor meets personal growth. Our students engage in a community that values discipline, creativity, and the pursuit of professional engineering standards.
                    </p>
                    <div class="p-4 bg-light border-start border-success border-4 rounded-0 shadow-sm transition-all"
                         style="transition: all 0.3s ease;"
                         onmouseover="this.style.transform='translateX(10px)'; this.classList.add('shadow');"
                         onmouseout="this.style.transform='translateX(0px)'; this.classList.remove('shadow');">
                        <p class="mb-0 fw-bold text-dark">"PROUD TO BE HIMALAYAN"</p>
                        <small class="text-success text-uppercase fw-bold">Student Identity</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="facilities" class="py-5 bg-light">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">2. Modern Facilities</h2>
        </div>
        
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
            <div class="col">
                <div class="card h-100 border-0 shadow-sm rounded-0 overflow-hidden"
                     style="transition: all 0.3s ease-in-out;"
                     onmouseover="this.style.transform='translateY(-10px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('img').style.transform='scale(1.1)';" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('img').style.transform='scale(1)';" >
                    <div class="ratio ratio-4x3 overflow-hidden">
                        <img src="/Assets/8.jpeg" 
                             class="object-fit-cover transition-all" style="transition: transform 0.5s ease;" alt=" Lab" />
                    </div>
                    <div class="card-body p-4 border-top border-success border-4 d-flex flex-column bg-white">
                        <h6 class="fw-bold text-uppercase mb-2"> Lab</h6>
                        <p class="small text-muted mb-0">Professional vocational training center for female students.</p>
                    </div>
                </div>
            </div>
            
            <div class="col">
                <div class="card h-100 border-0 shadow-sm rounded-0 overflow-hidden"
                     style="transition: all 0.3s ease-in-out;"
                     onmouseover="this.style.transform='translateY(-10px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('img').style.transform='scale(1.1)';" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('img').style.transform='scale(1)';" >
                    <div class="ratio ratio-4x3 overflow-hidden">
                        <img src="/Assets/7.jpeg" 
                             class="object-fit-cover transition-all" style="transition: transform 0.5s ease;" alt="Sewing Lab" />
                    </div>
                    <div class="card-body p-4 border-top border-success border-4 d-flex flex-column bg-white">
                        <h6 class="fw-bold text-uppercase mb-2"> Lab</h6>
                        <p class="small text-muted mb-0">Harnessing creativity for industrial textile productivity.</p>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card h-100 border-0 shadow-sm rounded-0 overflow-hidden"
                     style="transition: all 0.3s ease-in-out;"
                     onmouseover="this.style.transform='translateY(-10px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('img').style.transform='scale(1.1)';" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('img').style.transform='scale(1)';" >
                    <div class="ratio ratio-4x3 overflow-hidden">
                        <img src="/Assets/carousel1.png" 
                             class="object-fit-cover transition-all" style="transition: transform 0.5s ease;" alt="Cricket Ground" />
                    </div>
                    <div class="card-body p-4 border-top border-success border-4 d-flex flex-column bg-white">
                        <h6 class="fw-bold text-uppercase mb-2">Ground</h6>
                        <p class="small text-muted mb-0">Dedicated area for sports and physical development.</p>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card h-100 border-0 shadow-sm rounded-0 overflow-hidden"
                     style="transition: all 0.3s ease-in-out;"
                     onmouseover="this.style.transform='translateY(-10px)'; this.classList.replace('shadow-sm', 'shadow-lg'); this.querySelector('img').style.transform='scale(1.1)';" 
                     onmouseout="this.style.transform='translateY(0px)'; this.classList.replace('shadow-lg', 'shadow-sm'); this.querySelector('img').style.transform='scale(1)';" >
                    <div class="ratio ratio-4x3 overflow-hidden">
                        <img src="/Assets/16.jpeg" 
                             class="object-fit-cover transition-all" style="transition: transform 0.5s ease;" alt="Vocational Hub" />
                    </div>
                    <div class="card-body p-4 border-top border-success border-4 d-flex flex-column bg-white">
                        <h6 class="fw-bold text-uppercase mb-2">Vocational Hub</h6>
                        <p class="small text-muted mb-0">Short courses empowering the local community.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="activities" class="py-5 bg-white">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">3. Campus Activities</h2>
        </div>
        
        <div class="row g-4">
            <div class="col-md-6">
                <div class="row g-0 border shadow-sm h-100 transition-all bg-white"
                     style="transition: all 0.3s ease;"
                     onmouseover="this.style.borderColor='#198754'; this.style.transform='translateX(5px)';"
                     onmouseout="this.style.borderColor='#dee2e6'; this.style.transform='translateX(0px)';">
                    <div class="col-sm-4 overflow-hidden">
                        <div class="h-100 ratio ratio-1x1">
                            <img src="/Assets/Pak.jpg" 
                                 class="object-fit-cover transition-all" alt="Independence Day" />
                        </div>
                    </div>
                    <div class="col-sm-8 p-4 d-flex flex-column justify-content-center">
                        <h5 class="fw-bold text-success text-uppercase mb-2">14th August</h5>
                        <p class="small text-muted mb-0">Independence Day serves as a day of remembrance and fosters national unity.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="row g-0 border shadow-sm h-100 transition-all bg-white"
                     style="transition: all 0.3s ease;"
                     onmouseover="this.style.borderColor='#198754'; this.style.transform='translateX(5px)';"
                     onmouseout="this.style.borderColor='#dee2e6'; this.style.transform='translateX(0px)';">
                    <div class="col-sm-4 overflow-hidden">
                        <div class="h-100 ratio ratio-1x1">
                            <img src="/Assets/ind.jpg" 
                                 class="object-fit-cover" alt="Industrial Tours" />
                        </div>
                    </div>
                    <div class="col-sm-8 p-4 d-flex flex-column justify-content-center">
                        <h5 class="fw-bold text-success text-uppercase mb-2">Industrial Tours</h5>
                        <p class="small text-muted mb-0">Visits to PITAC and GCT Railway Road bridge the gap with the industry.</p>
                    </div>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="row g-0 border shadow-sm h-100 transition-all bg-white"
                     style="transition: all 0.3s ease;"
                     onmouseover="this.style.borderColor='#198754'; this.style.transform='translateX(5px)';"
                     onmouseout="this.style.borderColor='#dee2e6'; this.style.transform='translateX(0px)';">
                    <div class="col-sm-4 overflow-hidden">
                        <div class="h-100 ratio ratio-1x1">
                            <img src="/Assets/carousel2.jpeg" 
                                 class="object-fit-cover" alt="Guest Lectures" />
                        </div>
                    </div>
                    <div class="col-sm-8 p-4 d-flex flex-column justify-content-center">
                        <h5 class="fw-bold text-success text-uppercase mb-2">Guest Lectures</h5>
                        <p class="small text-muted mb-0">Insights from Barrister Waleed Iqbal on character building and purpose.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="row g-0 border shadow-sm h-100 transition-all bg-white"
                     style="transition: all 0.3s ease;"
                     onmouseover="this.style.borderColor='#198754'; this.style.transform='translateX(5px)';"
                     onmouseout="this.style.borderColor='#dee2e6'; this.style.transform='translateX(0px)';">
                    <div class="col-sm-4 overflow-hidden">
                        <div class="h-100 ratio ratio-1x1">
                            <img src="/Assets/Carousel1.png" class="object-fit-cover" alt="Safety Training" />
                        </div>
                    </div>
                    <div class="col-sm-8 p-4 d-flex flex-column justify-content-center">
                        <h5 class="fw-bold text-success text-uppercase mb-2">Safety Training</h5>
                        <p class="small text-muted mb-0">Workshops with Punjab Red Crescent Society on First Aid and Fire Fighting.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</asp:Content>