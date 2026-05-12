<%@ Page Title="Faculty" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" 
    Inherits="HIMACollegeWebsite.Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid p-0">
    <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
        <div class="position-absolute w-100 h-100">
            <img src="/Assets/Carousel1.png" class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
        </div>
        <div class="container position-relative">
            <h1 class="display-3 fw-bold text-uppercase mb-3">Our Faculty</h1>
            <p class="lead col-md-8 mx-auto fs-4 opacity-75">
              Mentors fostering innovation and academic success.
            </p>
        </div>
    </div>
</div>

<section id="civil" class="py-5 bg-white">
    <div class="container py-5">
        <div class="mb-5 position-relative">
            <h1 class="display-1 fw-bold text-secondary opacity-10 mb-0 lh-1">01</h1>
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2 position-relative mt-n5 me-3">Department of Civil</h2>
        </div>

        <div class="row g-4">
            <asp:Repeater ID="rpCivil" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 rounded-0 border-top border-success border-4 p-3 transition-all"
                             style="transition: all 0.3s ease; cursor: default;"
                             onmouseover="this.style.transform='translateY(-8px)'; this.style.borderTopWidth='8px'; this.classList.replace('shadow-sm', 'shadow'); this.querySelector('img').style.transform='scale(1.1)';" 
                             onmouseout="this.style.transform='translateY(0px)'; this.style.borderTopWidth='4px'; this.classList.replace('shadow', 'shadow-sm'); this.querySelector('img').style.transform='scale(1)';" >
                            <div class="d-flex align-items-center">
                                <div class="me-3 overflow-hidden" style="width:80px; height:100px; flex-shrink: 0;">
                                    <img src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' class="w-100 h-100 bg-light object-fit-cover transition-all" style="transition: transform 0.5s ease;" onerror="this.src='https://via.placeholder.com/80x100'"/>
                                </div>
                                <div>
                                    <h6 class="fw-bold text-uppercase mb-1 small"><%# Eval("FullName") %></h6>
                                    <p class="small text-success fw-bold mb-1"><%# Eval("Designation") %></p>
                                    <p class="text-muted mb-0" style="font-size: 0.75rem;"><%# Eval("Qualification") %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

<section id="electrical" class="py-5 bg-light">
    <div class="container py-5">
        <div class="mb-5 position-relative text-end">
            <h1 class="display-1 fw-bold text-secondary opacity-10 mb-0 lh-1">02</h1>
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2 position-relative mt-n5 me-3">Department of Electrical</h2>
        </div>

        <div class="row g-4">
            <asp:Repeater ID="rpElectrical" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 rounded-0 border-top border-success border-4 p-3 bg-white transition-all"
                             style="transition: all 0.3s ease;"
                             onmouseover="this.style.transform='translateY(-8px)'; this.style.borderTopWidth='8px'; this.classList.replace('shadow-sm', 'shadow'); this.querySelector('img').style.transform='scale(1.1)';" 
                             onmouseout="this.style.transform='translateY(0px)'; this.style.borderTopWidth='4px'; this.classList.replace('shadow', 'shadow-sm'); this.querySelector('img').style.transform='scale(1)';" >
                            <div class="d-flex align-items-center">
                                <div class="me-3 overflow-hidden" style="width:80px; height:100px; flex-shrink: 0;">
                                    <img src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' class="w-100 h-100 bg-light object-fit-cover transition-all" style="transition: transform 0.5s ease;" onerror="this.src='https://via.placeholder.com/80x100'"/>
                                </div>
                                <div>
                                    <h6 class="fw-bold text-uppercase mb-1 small"><%# Eval("FullName") %></h6>
                                    <p class="small text-success fw-bold mb-1"><%# Eval("Designation") %></p>
                                    <p class="text-muted mb-0" style="font-size: 0.75rem;"><%# Eval("Qualification") %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

<section id="cit" class="py-5 bg-white">
    <div class="container py-5">
        <div class="mb-5 position-relative">
           <h1 class="display-1 fw-bold text-secondary opacity-10 mb-0 lh-1">03</h1>
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2 position-relative mt-n5 me-3">Department of CIT</h2>
        </div>

        <div class="row g-4">
            <asp:Repeater ID="rpCIT" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 rounded-0 border-top border-success border-4 p-3 transition-all"
                             style="transition: all 0.3s ease;"
                             onmouseover="this.style.transform='translateY(-8px)'; this.style.borderTopWidth='8px'; this.querySelector('img').style.transform='scale(1.1)';" 
                             onmouseout="this.style.transform='translateY(0px)'; this.style.borderTopWidth='4px'; this.querySelector('img').style.transform='scale(1)';" >
                            <div class="d-flex align-items-center">
                                <div class="me-3 overflow-hidden" style="width:80px; height:100px; flex-shrink: 0;">
                                    <img src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' class="w-100 h-100 bg-light object-fit-cover transition-all" style="transition: transform 0.5s ease;" onerror="this.src='https://via.placeholder.com/80x100'"/>
                                </div>
                                <div>
                                    <h6 class="fw-bold text-uppercase mb-1 small"><%# Eval("FullName") %></h6>
                                    <p class="small text-success fw-bold mb-1"><%# Eval("Designation") %></p>
                                    <p class="text-muted mb-0" style="font-size: 0.75rem;"><%# Eval("Qualification") %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

<section id="hvac" class="py-5 bg-light">
    <div class="container py-5">
        <div class="mb-5 position-relative text-end">
           <h1 class="display-1 fw-bold text-secondary opacity-10 mb-0 lh-1">04</h1>
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2 position-relative mt-n5 me-3">Department of HVAC&R</h2>
        </div>

        <div class="row g-4">
            <asp:Repeater ID="rpHVAC" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 rounded-0 border-top border-success border-4 p-3 bg-white transition-all"
                             style="transition: all 0.3s ease;"
                             onmouseover="this.style.transform='translateY(-8px)'; this.style.borderTopWidth='8px'; this.querySelector('img').style.transform='scale(1.1)';" 
                             onmouseout="this.style.transform='translateY(0px)'; this.style.borderTopWidth='4px'; this.querySelector('img').style.transform='scale(1)';" >
                            <div class="d-flex align-items-center">
                                <div class="me-3 overflow-hidden" style="width:80px; height:100px; flex-shrink: 0;">
                                    <img src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' class="w-100 h-100 bg-light object-fit-cover transition-all" style="transition: transform 0.5s ease;" onerror="this.src='https://via.placeholder.com/80x100'"/>
                                </div>
                                <div>
                                    <h6 class="fw-bold text-uppercase mb-1 small"><%# Eval("FullName") %></h6>
                                    <p class="small text-success fw-bold mb-1"><%# Eval("Designation") %></p>
                                    <p class="text-muted mb-0" style="font-size: 0.75rem;"><%# Eval("Qualification") %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

<section id="mechanical" class="py-5 bg-white">
    <div class="container py-5">
        <div class="mb-5 position-relative">
            <h1 class="display-1 fw-bold text-secondary opacity-10 mb-0 lh-1">05</h1>
            <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2 position-relative mt-n5 me-3">Department of Mechanical</h2>
        </div>

        <div class="row g-4">
            <asp:Repeater ID="rpMechanical" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 rounded-0 border-top border-success border-4 p-3 transition-all"
                             style="transition: all 0.3s ease;"
                             onmouseover="this.style.transform='translateY(-8px)'; this.style.borderTopWidth='8px'; this.querySelector('img').style.transform='scale(1.1)';" 
                             onmouseout="this.style.transform='translateY(0px)'; this.style.borderTopWidth='4px'; this.querySelector('img').style.transform='scale(1)';" >
                            <div class="d-flex align-items-center">
                                <div class="me-3 overflow-hidden" style="width:80px; height:100px; flex-shrink: 0;">
                                    <img src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' class="w-100 h-100 bg-light object-fit-cover transition-all" style="transition: transform 0.5s ease;" onerror="this.src='https://via.placeholder.com/80x100'"/>
                                </div>
                                <div>
                                    <h6 class="fw-bold text-uppercase mb-1 small"><%# Eval("FullName") %></h6>
                                    <p class="small text-success fw-bold mb-1"><%# Eval("Designation") %></p>
                                    <p class="text-muted mb-0" style="font-size: 0.75rem;"><%# Eval("Qualification") %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

</asp:Content>