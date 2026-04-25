<%@ Page Title="Programs" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Programs.aspx.cs" 
    Inherits="HIMACollegeWebsite.Programs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute w-100 h-100">
            <img src="https://images.unsplash.com/photo-1562774053-701939374585?auto=format&fit=crop&w=1600&q=80"
                 class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
        </div>
        
        <div class="container position-relative">
            <h1 class="display-3 fw-bold text-uppercase mb-3">Academic Programs</h1>
            <p class="lead col-md-8 mx-auto fs-4 opacity-75">
                With a steadfast focus on quality education, we strive to produce competent and responsible graduates as per industrial needs.
            </p>
        </div>
    </div>
</div>

<section id="bs-programs" class="py-5 bg-white">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">1. BS Programs</h2>
            <p class="text-muted">High-level engineering degrees recognized for industrial excellence.</p>
        </div>
        
        <div class="row g-4">
            <asp:Repeater ID="rpBSPrograms" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 rounded-0 border-top border-success border-4 p-4">
                            <div class="mb-3"><span class="badge bg-dark text-uppercase small">Degree Program</span></div>
                            <h4 class="fw-bold text-success text-uppercase mb-3"><%# Eval("Title") %></h4>
                            <p class="text-muted small mb-0"><%# Eval("Description") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

<section id="it-programs" class="py-5 bg-light">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">2. IT & Tech</h2>
            <p class="text-muted">High-demand digital skills for the global tech economy.</p>
        </div>
        
        <div class="row g-4">
            <asp:Repeater ID="rpITPrograms" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 rounded-0 border-top border-success border-4 p-4">
                            <div class="mb-3"><span class="badge bg-dark text-uppercase small">Tech Course</span></div>
                            <h4 class="fw-bold text-success text-uppercase mb-3"><%# Eval("Title") %></h4>
                            <p class="text-muted small mb-0"><%# Eval("Description") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

<section id="vocational-hub" class="py-5 bg-white">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">3. Vocational Hub</h2>
            <p class="text-muted">Empowering students through professional vocational mastery.</p>
        </div>
        
        <div class="row g-4">
            <asp:Repeater ID="rpVocationalPrograms" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 rounded-0 border-top border-dark border-4 p-4">
                            <div class="mb-3"><span class="badge bg-success text-uppercase small">Vocational</span></div>
                            <h4 class="fw-bold text-dark text-uppercase mb-3"><%# Eval("Title") %></h4>
                            <p class="text-muted small mb-0"><%# Eval("Description") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

<section id="short-courses" class="py-5 bg-light">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">4. Short Courses</h2>
            <p class="text-muted">Rapid skill development for real-world success.</p>
        </div>

        <div class="row g-4">
            <asp:Repeater ID="rpShortCourses" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 rounded-0 border-top border-dark border-4 p-4">
                            <div class="mb-3"><span class="badge bg-success text-uppercase small">Certification</span></div>
                            <h4 class="fw-bold text-dark text-uppercase mb-3"><%# Eval("Title") %></h4>
                            <p class="text-muted small mb-0"><%# Eval("Description") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </div>
</section>

</asp:Content>