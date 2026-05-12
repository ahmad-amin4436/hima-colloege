<%@ Page Title="Short Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShortCourses.aspx.cs" Inherits="HIMACollegeWebsite.ShortCourses" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Hero Section -->
    <div class="container-fluid p-0">
        <div class="position-relative text-white text-center d-flex align-items-center justify-content-center vh-100">
            <div class="position-absolute w-100 h-100">
                <img src="/Assets/Carousel1.png" class="w-100 h-100 object-fit-cover" alt="HIMA Campus" />
                <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75"></div>
            </div>
            <div class="container position-relative">
                <h1 class="display-3 fw-bold text-uppercase mb-3">Short Courses</h1>
                <p class="lead col-md-8 mx-auto fs-4 opacity-75">Explore our technical departments and academic roadmaps.</p>
            </div>
        </div>
    </div>

    <!-- 2. Main Section Repeater -->
    <asp:Repeater ID="rpShortDepartments" runat="server" OnItemDataBound="rpShortDepartments_ItemDataBound">
        <ItemTemplate>
            <section class='<%# Container.ItemIndex % 2 == 0 ? "py-5 bg-white" : "py-5 bg-light" %>'>
                <div class="container py-5">
                    
                    <!-- Department Heading -->
                    <div class="mb-5">
                        <h2 class="fw-bold text-uppercase border-bottom border-success border-3 d-inline-block pb-2">
                             <%# Container.DataItem %> Tech
                        </h2>
                    </div>

                    <div class="d-flex flex-column gap-5">
                        <asp:Repeater ID="rpShortPrograms" runat="server">
                            <ItemTemplate>


                                
                                <div class="row align-items-center border-bottom pb-5 g-0">
                                    <h1 class="fw-bold text-secondary opacity-10 mt-2">0<%# Container.ItemIndex + 1 %></h1>
                                    <br />
                                    <div class="py-2">
                                        <h3 class="fw-bold text-uppercase mb-0 text-success"><%# Eval("Title") %></h3>
                                    </div>

                                    <!-- Images Section (Stayed exactly the same placement) -->
                                    <div class="col-md-3 px-3">
    <div class="p-2 border border-success border-2 bg-white w-100 shadow-sm">
        <img src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' 
             class="w-100 object-fit-cover shadow-sm" style="height: 200px;" 
             onerror="this.src='Logo_HIMA.png'"/>
    </div>
</div>
<div class="col-md-3 px-3">
    <div class="p-2 border border-success border-2 bg-white w-100 shadow-sm">
        <img src='<%# ResolveUrl(Eval("ImagePath2").ToString()) %>' 
             class="w-100 object-fit-cover shadow-sm" style="height: 200px;" 
             onerror="this.src='Logo_HIMA.png'"/>
    </div>
</div>
 <div class="col-md-3 px-3">
    <div class="p-2 border border-success border-2 bg-white w-100 shadow-sm">
        <img src='<%# ResolveUrl(Eval("ImagePath3").ToString()) %>' 
             class="w-100 object-fit-cover shadow-sm" style="height: 200px;" 
             onerror="this.src='Logo_HIMA.png'"/>
    </div>
</div>
<div class="col-md-3 px-3">
    <div class="p-2 border border-success border-2 bg-white w-100 shadow-sm">
        <img src='<%# ResolveUrl(Eval("ImagePath4").ToString()) %>' 
             class="w-100 object-fit-cover shadow-sm" style="height: 200px;" 
             onerror="this.src='Logo_HIMA.png'"/>
    </div>
</div>

                                    <!-- Right: Details -->
                                    <div class="col-md-12 px-4 mt-4 mt-md-0">
                                        
                                        <div class="py-2">
                                            <span class="text-muted small fw-bold text-uppercase">Program Code: <%# Eval("Category") %></span>
                                        </div>

                                        <div class="py-3">
                                            <span class=" text-muted small fw-bold text-uppercase"> Description</span>
                                            <p class="text-muted mb-0 small lh-base"> 
                                                <%# Eval("Description") %>
                                            </p>
                                        </div>
                                        <hr class="my-0 opacity-25" />

                                      <!-- Info Line -->
<div class="py-3 d-flex gap-5 border-bottom">
    <div>
        <span class="text-muted small fw-bold text-uppercase d-block">Duration</span>
        <span class="h5 fw-bold mb-0"><%# Eval("Duration") %></span>
    </div>
    <!-- If you have Session, add it here, otherwise this div ends the Info Line -->
</div>

    <!-- VIEW LINK -->
    <asp:HyperLink ID="lnkViewScheme" runat="server" 
        NavigateUrl='<%# Eval("PdfPath") %>' 
        Target="_blank"
        Visible='<%# !string.IsNullOrEmpty(Eval("PdfPath").ToString()) %>'
        CssClass="text-decoration-none text-dark fw-bold link-success transition">
        <i class="bi bi-file-earmark-pdf text-danger me-1"></i> VIEW SCHEME OF STUDIES
    </asp:HyperLink>

    <!-- DOWNLOAD LINK -->
    <asp:HyperLink ID="lnkDownScheme" runat="server" 
        NavigateUrl='<%# Eval("PdfPath") %>'
        Download="Scheme_of_Studies"
        Visible='<%# !string.IsNullOrEmpty(Eval("PdfPath").ToString()) %>'
        CssClass="btn btn-success btn-sm px-4 fw-bold shadow-sm">
        DOWNLOAD PDF
    </asp:HyperLink>
</div>
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>