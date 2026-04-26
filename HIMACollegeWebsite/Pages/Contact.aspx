<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HIMACollegeWebsite.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100 bg-dark">
    <div class="position-absolute top-0 start-0 w-100 h-100">
        <img src="/Assets/Carousel1.png" 
             class="w-100 h-100" 
             style="object-fit: cover; opacity: 0.4;" 
             alt="HIMA Campus" />
    </div>

    <div class="container position-relative" style="z-index: 2;">
        <h2 class="display-3 fw-bold text-uppercase">Contact Us</h2>
        <p class="lead col-md-8 mx-auto fs-4">
            With a steadfast focus on quality education, we strive to produce competent 
            and responsible graduates as per industrial needs.
        </p>
    </div>
</div>

<div class="container my-5 py-4">
    <div class="row g-4">

        <div class="col-md-4">
            <div class="bg-dark text-white p-4 rounded-0 h-100 border-start border-success border-4 shadow">
                <h4 class="fw-bold text-success mb-4">Get In Touch</h4>
                <p class="opacity-75 mb-5">HIMA College of Engineering & Technology - Sabzazar Campus</p>

                <div class="mb-4">
                    <h6 class="fw-bold text-success text-uppercase small">Address</h6>
                    <p class="mb-0">Main Boulevard, Sabzazar, scheme mor Multan Rd, Lahore, 54572, Pakistan</p>
                </div>

                <div class="mb-4">
                    <h6 class="fw-bold text-success text-uppercase small">Phone</h6>
                    <p class="mb-0">+92 42 35962424</p>
                </div>

                <div class="mb-4">
                    <h6 class="fw-bold text-success text-uppercase small">Email</h6>
                    <p class="mb-0">info@himacollege.edu.pk</p>
                </div>

                <div class="mb-4">
                    <h6 class="fw-bold text-success text-uppercase small">Office Hours</h6>
                    <p class="mb-0">Mon – Thurs: 8:00 AM – 2:00 PM</p>
                    <p class="mb-0">Fri: 8:00 AM – 12:00 PM</p>
                    <p class="mb-0">Sat: 8:00 AM – 2:00 PM</p>
                </div>

                <hr class="text-white opacity-25 my-4">

                <div class="d-flex gap-3">
                    <a href="https://www.facebook.com/arainaafzal456/" 
   class="btn btn-outline-light btn-sm rounded-circle" 
   target="_blank" 
   rel="noopener noreferrer">
    <i class="fab fa-facebook-f"></i>
</a>
                </div>
            </div>
        </div>

        <div class="col-md-8">
            <div class="card shadow-sm border-0 h-100 overflow-hidden rounded-0">
                <iframe 
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3401.326233481236!2d74.2690!3d31.5170!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3919039a8888888b%3A0x8888888888888888!2sHIMA%20College%20Sabzazar!5e0!3m2!1sen!2spk!4v1714150000000"
    width="100%" 
    height="100%" 
    style="border:0; min-height: 500px;" 
    allow="fullscreen" 
    loading="lazy" 
    referrerpolicy="no-referrer-when-downgrade">
</iframe>
                <div class="card-footer bg-white border-0 py-3 text-center">
                    <a href="https://www.google.com/maps/search/HIMA+College+Sabzazar+Lahore" target="_blank" class="btn btn-success rounded-0 px-4 fw-bold">
                        <i class="fas fa-map-marker-alt me-2"></i>Open in Google Maps
                    </a>
                </div>
            </div>
        </div>

    </div>
</div>

</asp:Content>