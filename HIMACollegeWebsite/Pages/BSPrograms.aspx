<%@ Page Title="BS Programs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BSPrograms.aspx.cs" Inherits="HIMACollegeWebsite.BSPrograms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid p-0">
        <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
            <div class="position-absolute w-100 h-100">
                <img src="/Assets/Carousel1.png" class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
                <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
            </div>
            <div class="container position-relative">
                <h1 class="display-3 fw-bold text-uppercase mb-3">BS Programs</h1>
                <p class="lead col-md-8 mx-auto fs-4 opacity-75">Bridging theory and industrial mastery.</p>
   
            </div>
        </div>
    </div>

    <div class="container py-5">
        <h2 class="text-success fw-bold mb-4 text-uppercase border-bottom border-success pb-2">BS Programs</h2>
        <div class="row">
            <asp:Repeater ID="rpBSPrograms" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100 shadow-sm border-0 border-top border-success border-4 p-4 transition-base" 
                             onmouseover="this.classList.replace('shadow-sm', 'shadow-lg'); this.style.backgroundColor='#f8f9fa';" 
                             onmouseout="this.classList.replace('shadow-lg', 'shadow-sm'); this.style.backgroundColor='';">
                            
                            <h4 class="fw-bold text-success text-uppercase mb-3"><%# Eval("Title") %></h4>
                            <p class="text-muted small mb-4"><%# Eval("Description") %></p>
                            
                            <div class="mt-auto border-top pt-3 small">
                                <div><strong>Duration:</strong> <%# Eval("Duration") %></div>
                                <div class="text-success small mt-1">Starting: <%# Eval("StartDate") %></div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>