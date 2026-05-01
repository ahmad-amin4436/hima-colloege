<%@ Page Title="Short Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShortCourses.aspx.cs" Inherits="HIMACollegeWebsite.ShortCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">
        <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
            <div class="position-absolute w-100 h-100">
                <img src="/Assets/Carousel1.png" class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
                <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
            </div>
            <div class="container position-relative">
                <h1 class="display-3 fw-bold text-uppercase mb-3">Short Courses</h1>
                <p class="lead col-md-8 mx-auto fs-4 opacity-75">Bridging theory and industrial mastery</p>
            </div>
        </div>
    </div>

    <div class="container py-5">
        <h2 class="text-success fw-bold mb-4 text-uppercase border-bottom border-success pb-2">Short Courses</h2>
        <div class="row">
            <asp:Repeater ID="rpShort" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100 border-0 border-top border-success border-4 p-4 shadow-sm text-center" 
                             style="transition: all 0.3s ease-in-out;"
                             onmouseover="this.style.transform='translateY(-10px)'; this.classList.remove('shadow-sm'); this.classList.add('shadow-lg');" 
                             onmouseout="this.style.transform='translateY(0px)'; this.classList.remove('shadow-lg'); this.classList.add('shadow-sm');">
                            
                            <h5 class="fw-bold text-success text-uppercase mb-3"><%# Eval("Title") %></h5>
                            <hr class="border-success opacity-25" />
                            
                            <p class="small text-muted mb-4"><%# Eval("Description") %></p>
                            
                            <div class="mt-auto pt-2">
                                <span class="badge rounded-pill bg-success-subtle text-success px-3 py-2">
                                    <i class="bi bi-clock me-1"></i> Duration: <%# Eval("Duration") %>
                                </span>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>