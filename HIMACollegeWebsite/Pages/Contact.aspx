<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="Contact.aspx.cs"
Inherits="HIMACollegeWebsite.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!-- HERO -->
<div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">

    <div class="position-absolute w-100 h-100">
        <img src="https://images.unsplash.com/photo-1562774053-701939374585?auto=format&fit=crop&w=1600&q=80"
             class="w-100 h-100 object-fit-cover" />
    </div>

    <div class="position-absolute w-100 h-100 bg-dark opacity-75"></div>

    <div class="container position-relative">
        <h2 class="display-3 fw-bold text-uppercase">Contact</h2>
        <p class="lead">
            With a steadfast focus on quality education, we strive to produce competent 
            and responsible graduates as per industrial needs.
        </p>
    </div>

</div>


<!-- CONTACT SECTION -->
<div class="container my-5">

    <div class="row g-4">

        <!-- INFO BOX -->
        <div class="col-md-5">

            <div class="bg-dark text-white p-4 rounded h-100">

                <h4 class="fw-bold">Contact Information</h4>
                <p class="opacity-75">Feel free to reach us anytime</p>

                <h6 class="fw-bold mt-4">Address</h6>
                <p class="mb-0">HIMA College Campus, Punjab, Pakistan</p>

                <h6 class="fw-bold mt-4">Phone</h6>
                <p class="mb-0">+92 300 1234567</p>

                <h6 class="fw-bold mt-4">Email</h6>
                <p class="mb-0">info@himacollege.edu.pk</p>

                <h6 class="fw-bold mt-4">Office Hours</h6>
                <p class="mb-0">Mon – Fri: 9:00 AM – 4:00 PM</p>

                <hr class="text-white">

                <small class="opacity-75">
                    We usually respond within 24 hours.
                </small>

            </div>

        </div>

        <!-- FORM -->
        <div class="col-md-7">

            <div class="card shadow-sm p-4 h-100">

                <h4 class="text-center text-primary fw-bold mb-4">Send Message</h4>

                <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" placeholder="Your Name"></asp:TextBox>

                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" placeholder="Your Email"></asp:TextBox>

                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control mb-3" placeholder="Subject"></asp:TextBox>

                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5"
                    CssClass="form-control mb-3" placeholder="Your Message"></asp:TextBox>

                <asp:Button ID="btnSend" runat="server" Text="Send Message"
                    CssClass="btn btn-dark w-100" OnClick="btnSend_Click" />

            </div>

        </div>

    </div>

</div>

</asp:Content>