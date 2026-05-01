<%@ Page Title="Administration" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Administration.aspx.cs"
    Inherits="HIMACollegeWebsite.Administration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!-- HERO -->
<div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">

    <!-- Background Image -->
    <div class="position-absolute top-0 start-0 w-100 h-100">
        <img src="/Assets/Carousel1.png" />
             class="w-100 h-100 object-fit-cover" />
    </div>

    <!-- Dark Overlay (acts like blur effect feel) -->
    <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>

    <!-- Content -->
    <div class="container position-relative">

        <h2 class="display-4 fw-bold text-uppercase">Administration</h2>

        <p class="lead col-md-8 mx-auto">
          Transparent governance and innovative management.
        </p>

    </div>

</div>

<!-- MANAGEMENT TITLE -->
<div class="container py-5 text-center">

    <h2 class="fw-bold text-primary">Management Committee</h2>
    <hr class="w-25 mx-auto text-success">

</div>

<!-- MANAGEMENT CARDS -->
<div class="container">

    <div class="row g-4">

        <div class="col-6 col-md-3">
            <div class="card shadow-sm h-80 text-center border-bottom border-2 border-success p-3">

                <img src="images/aftab_agha.jpg"
                     class="rounded-circle mx-auto mb-3"
                     style="width:80px;height:80px;object-fit:cover;"
                     onerror="this.src='images/default.png'"/>

                <span class="badge bg-light text-success mb-2">Hon. President</span>

                <h6 class="fw-bold text-primary">Aftab Islam Agha</h6>

                <small class="text-muted">
                    MSc (Engg), FICE (UK)<br />Chartered Engineer
                </small>

            </div>
        </div>

        <div class="col-6 col-md-3">
            <div class="card shadow-sm h-80 text-center border-bottom border-2 border-primary p-3">

                <img src="images/shahid_latif.jpg"
                     class="rounded-circle mx-auto mb-3"
                     style="width:80px;height:80px;object-fit:cover;"
                     onerror="this.src='images/default.png'"/>

                <span class="badge bg-light text-success mb-2">Hon. Secretary</span>

                <h6 class="fw-bold text-primary">Engr. Mian Shahid Latif</h6>

                <small class="text-muted">
                    MSc (Engineering)<br />Operations Lead
                </small>

            </div>
        </div>

        <div class="col-6 col-md-3">
            <div class="card shadow-sm h-80 text-center border-bottom border-2 border-success p-3">

                <img src="images/nasiruddin.jpg"
                     class="rounded-circle mx-auto mb-3"
                     style="width:80px;height:80px;object-fit:cover;"
                     onerror="this.src='images/default.png'"/>

                <span class="badge bg-light text-success mb-2">Hon. Member</span>

                <h6 class="fw-bold text-primary">Nasiruddin</h6>

                <small class="text-muted">
                    Committee Member<br />Institutional Dev.
                </small>

            </div>
        </div>

        <div class="col-6 col-md-3">
            <div class="card shadow-sm h-80 text-center border-bottom border-2 border-primary p-3">

                <img src="images/mashhood.jpg"
                     class="rounded-circle mx-auto mb-3"
                     style="width:80px;height:80px;object-fit:cover;"
                     onerror="this.src='images/default.png'"/>

                <span class="badge bg-light text-success mb-2">Hon. Member</span>

                <h6 class="fw-bold text-primary">Mashhood Ur Rehman</h6>

                <small class="text-muted">
                    Committee Member<br />Coordination
                </small>

            </div>
        </div>

    </div>

</div>

<!-- MISSION + INFO -->
<div class="container py-5">

    <div class="row g-4">

        <!-- MISSION -->
        <div class="col-lg-7">

            <div class="bg-dark text-white p-4 rounded h-100">

                <h3 class="fw-bold text-success mb-4">Our Administrative Mission</h3>

                <p>
                    To produce entrepreneurs—the job providers, not job seekers. We equip students with advanced technological knowledge while creating an open culture of innovation.
                </p>

                <div class="row g-3 mt-3">

                    <div class="col-6">
                        <div class="border p-3 text-center rounded">
                            <h5 class="fw-bold">NTC</h5>
                            <small>Accredited</small>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="border p-3 text-center rounded">
                            <h5 class="fw-bold">ISO</h5>
                            <small>Quality Standards</small>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <!-- OFFICE HOURS -->
        <div class="col-lg-5">

            <div class="card shadow-sm h-100 p-3 border-end border-3 border-success">

                <h4 class="fw-bold text-primary mb-4">Office Hours</h4>

                <p><strong>Mon - Fri:</strong> 8:00 AM - 3:00 PM</p>
                <p><strong>Saturday:</strong> 9:00 AM - 1:00 PM</p>
                <p><strong>Sunday:</strong> Closed</p>
                <p><strong>Contact:</strong> +920000000000</p>

            </div>

        </div>

    </div>

</div>

</asp:Content>