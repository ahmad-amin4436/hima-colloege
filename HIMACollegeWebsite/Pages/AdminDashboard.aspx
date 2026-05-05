<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="HIMACollegeWebsite.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <%-- Header Section --%>
        <div class="d-flex justify-content-between align-items-end mb-4 border-bottom border-success pb-3">
            <div>
                <h1 class="fw-bold text-dark text-uppercase mb-0">HIMA <span class="text-success">Control Panel</span></h1>
            </div>
            <div class="text-end">
                <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click" CssClass="btn btn-outline-danger btn-sm rounded-0 fw-bold px-4">LOGOUT</asp:LinkButton>
            </div>
        </div>

        <%-- Navigation Tabs --%>
        <div class="row g-0 mb-4 shadow-sm border border-2">
            <div class="col-md-4">
                <asp:LinkButton ID="btnTabProg" runat="server" OnClick="SwitchView" CommandArgument="0" CssClass="btn btn-success w-100 rounded-0 py-4 fw-bold border-end">PROGRAMS</asp:LinkButton>
            </div>
            <div class="col-md-4">
                <asp:LinkButton ID="btnTabAdm" runat="server" OnClick="SwitchView" CommandArgument="1" CssClass="btn btn-dark w-100 rounded-0 py-4 fw-bold border-end">ADMISSIONS</asp:LinkButton>
            </div>
            <div class="col-md-4">
                <asp:LinkButton ID="btnTabFac" runat="server" OnClick="SwitchView" CommandArgument="2" CssClass="btn btn-dark w-100 rounded-0 py-4 fw-bold">FACULTY</asp:LinkButton>
            </div>
        </div>

        <%-- Message Display Area --%>
        <asp:UpdatePanel ID="upMessage" runat="server" UpdateMode="Always">
            <ContentTemplate>
                <div id="divMessage" runat="server" visible="false" class="alert alert-success alert-dismissible fade show rounded-0 mb-4" role="alert">
                    <i class="bi bi-check-circle-fill me-2"></i>
                    <asp:Label ID="lblStatusMessage" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <%-- AJAX Wrapper --%>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:MultiView ID="MainMultiView" runat="server" ActiveViewIndex="0">

                    <%-- VIEW 0: PROGRAMS MANAGEMENT --%>
                    <asp:View ID="ViewPrograms" runat="server">
                        <div class="card border-0 rounded-0 shadow-sm border-start border-success border-5 mb-4">
                            <div class="card-header bg-dark text-white rounded-0">
                                <h5 class="mb-0 small fw-bold">MANAGE PROGRAMS</h5>
                            </div>
                            <div class="card-body p-4">
                                <asp:HiddenField ID="hfProgID" runat="server" />
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="small fw-bold text-muted">TITLE</label>
                                        <asp:TextBox ID="txtProgTitle" runat="server" CssClass="form-control rounded-0 border-2"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="small fw-bold text-muted">CATEGORY</label>
                                        <asp:DropDownList ID="ddlProgCat" runat="server" CssClass="form-select rounded-0 border-2">
                                            <asp:ListItem>BS Program</asp:ListItem>
                                            <asp:ListItem>DAE</asp:ListItem>
                                            <asp:ListItem>Vocational</asp:ListItem>
                                            <asp:ListItem>Short Course</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6">
                                         <label class="small fw-bold text-muted">START DATE</label>
                                         <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" CssClass="form-control rounded-0 border-2"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="small fw-bold text-muted">DURATION</label>
                                        <asp:TextBox ID="txtDuration" runat="server" CssClass="form-control rounded-0 border-2" placeholder="e.g. 4 Years"></asp:TextBox>
                                    </div>
                                    <div class="col-12">
                                        <label class="small fw-bold text-muted">DESCRIPTION</label>
                                        <asp:TextBox ID="txtProgDesc" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control rounded-0 border-2"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="small fw-bold text-muted">PROGRAM IMAGES (4 MAX)</label>
                                        <div class="row g-2">
                                            <div class="col-6"><asp:FileUpload ID="fuProgImg1" runat="server" CssClass="form-control form-control-sm" /></div>
                                            <div class="col-6"><asp:FileUpload ID="fuProgImg2" runat="server" CssClass="form-control form-control-sm" /></div>
                                            <div class="col-6"><asp:FileUpload ID="fuProgImg3" runat="server" CssClass="form-control form-control-sm" /></div>
                                            <div class="col-6"><asp:FileUpload ID="fuProgImg4" runat="server" CssClass="form-control form-control-sm" /></div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="small fw-bold text-muted">Scheme of Studies (PDF)</label>
                                        <asp:FileUpload ID="fuProgPdf" runat="server" CssClass="form-control border-2" />
                                    </div>
                                    <div class="col-12 text-end">
                                        <asp:Button ID="btnCancelProg" runat="server" Text="CANCEL" OnClick="btnCancelProg_Click" Visible="false" CssClass="btn btn-secondary rounded-0 fw-bold px-4" />
                                        <asp:Button ID="btnSaveProg" runat="server" Text="SAVE PROGRAM" OnClick="btnSaveProg_Click" CssClass="btn btn-success rounded-0 fw-bold px-4" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive shadow-sm">
                            <asp:GridView ID="gvPrograms" runat="server" AutoGenerateColumns="False"
                                CssClass="table table-hover bg-white border align-middle small"
                                DataKeyNames="ProgramID" OnRowCommand="gvPrograms_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <img src='<%# Eval("ImagePath") %>' style="width: 50px; height: 35px; object-fit: cover;" class="border" onerror="this.src='/Assets/Logo_HIMA.png';" />
                                            <img src='<%# Eval("ImagePath2") %>' style="width: 50px; height: 35px; object-fit: cover;" class="border" onerror="this.src='/Assets/Logo_HIMA.png';" />
                                            <img src='<%# Eval("ImagePath3") %>' style="width: 50px; height: 35px; object-fit: cover;" class="border" onerror="this.src='/Assets/Logo_HIMA.png';" />
                                            <img src='<%# Eval("ImagePath4") %>' style="width: 50px; height: 35px; object-fit: cover;" class="border" onerror="this.src='/Assets/Logo_HIMA.png';" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Title" HeaderText="Title" />
                                    <asp:BoundField DataField="Category" HeaderText="Category" />
                                    <asp:BoundField DataField="Duration" HeaderText="Duration" />
                                    <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:dd-MMM-yyyy}" />
                                    <asp:TemplateField HeaderText="S.O.S (PDF)">
                                        <ItemTemplate>
                                            <a href='<%# Eval("PdfPath") %>' target="_blank" class='<%# string.IsNullOrEmpty(Eval("PdfPath").ToString()) ? "text-muted d-none" : "text-danger fw-bold" %>'>
                                                <i class="bi bi-file-earmark-pdf"></i> PDF
                                            </a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Actions" ItemStyle-Width="130px">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbEdit" runat="server" CommandName="EditProg" CommandArgument='<%# Eval("ProgramID") %>' CssClass="btn btn-sm btn-outline-primary py-0 px-2">Edit</asp:LinkButton>
                                            <asp:LinkButton ID="lbDel" runat="server" CommandName="DeleteProg" CommandArgument='<%# Eval("ProgramID") %>' OnClientClick="return confirm('Delete this program?');" CssClass="btn btn-sm btn-outline-danger py-0 px-2">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </asp:View>

                    <%-- VIEW 1: ADMISSIONS --%>
                    <asp:View ID="ViewAdmissions" runat="server">
                        <div class="card border-0 rounded-0 shadow-sm border-start border-success border-5 mb-4">
                            <div class="card-header bg-dark text-white rounded-0">
                                <h5 class="mb-0 small fw-bold">UPDATE ADMISSION DOCUMENTS</h5>
                            </div>
                            <div class="card-body p-4">
                                <div class="row g-4 text-center">
                                    <div class="col-md-4 border-end">
                                        <label class="d-block small fw-bold mb-2">FEE STRUCTURE</label>
                                        <asp:FileUpload ID="fuFee" runat="server" CssClass="form-control mb-2" />
                                    </div>
                                    <div class="col-md-4 border-end">
                                        <label class="d-block small fw-bold mb-2">ADMISSION FORM</label>
                                        <asp:FileUpload ID="fuForm" runat="server" CssClass="form-control mb-2" />
                                    </div>
                                    <div class="col-md-4">
                                        <label class="d-block small fw-bold mb-2">PROSPECTUS</label>
                                        <asp:FileUpload ID="fuProspectus" runat="server" CssClass="form-control mb-2" />
                                    </div>
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="btnUpdateAdm" runat="server" Text="UPDATE ALL DOCUMENTS" OnClick="btnUpdateAdm_Click" CssClass="btn btn-dark rounded-0 fw-bold mt-4 px-5" />
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive shadow-sm">
                            <asp:GridView ID="gvAdmissions" runat="server" AutoGenerateColumns="False" CssClass="table table-hover bg-white border align-middle">
                                <Columns>
                                    <asp:BoundField DataField="DocType" HeaderText="Document Type" HeaderStyle-CssClass="ps-3" ItemStyle-CssClass="ps-3" />
                                    <asp:TemplateField HeaderText="Current Status">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="hlView" runat="server" NavigateUrl='<%# Eval("FilePath") %>' Target="_blank" 
                                                Visible='<%# !string.IsNullOrEmpty(Eval("FilePath").ToString()) %>' CssClass="text-success fw-bold text-decoration-none">
                                                <i class="bi bi-file-earmark-check me-1"></i> View Current File
                                            </asp:HyperLink>
                                            <asp:Label ID="lblNoFile" runat="server" Text="Not Uploaded" Visible='<%# string.IsNullOrEmpty(Eval("FilePath").ToString()) %>' CssClass="text-muted italic small"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </asp:View>

                    <%-- VIEW 2: FACULTY --%>
                    <asp:View ID="ViewFaculty" runat="server">
                        <div class="card border-0 rounded-0 shadow-sm border-start border-success border-5 mb-4">
                            <div class="card-header bg-dark text-white rounded-0">
                                <h5 class="mb-0 small fw-bold">FACULTY MANAGEMENT</h5>
                            </div>
                            <div class="card-body p-4">
                                <asp:HiddenField ID="hfFacID" runat="server" />
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="small fw-bold text-muted">NAME</label>
                                        <asp:TextBox ID="txtFacName" runat="server" CssClass="form-control rounded-0 border-2"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="small fw-bold text-muted">DEPARTMENT</label>
                                        <asp:DropDownList ID="ddlFacultyDept" runat="server" CssClass="form-select rounded-0 border-2">
                                            <asp:ListItem>Civil</asp:ListItem>
                                            <asp:ListItem>Electrical</asp:ListItem>
                                            <asp:ListItem>CIT</asp:ListItem>
                                            <asp:ListItem>HVAC&R</asp:ListItem>
                                            <asp:ListItem>Mechanical</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="small fw-bold text-muted">DESIGNATION</label>
                                        <asp:TextBox ID="txtFacDesig" runat="server" CssClass="form-control rounded-0 border-2"></asp:TextBox>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="small fw-bold text-muted">EDUCATION</label>
                                        <asp:TextBox ID="txtFacEdu" runat="server" CssClass="form-control rounded-0 border-2"></asp:TextBox>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="small fw-bold text-muted">PHOTO</label>
                                        <asp:FileUpload ID="fuFacImage" runat="server" CssClass="form-control rounded-0 border-2" />
                                    </div>
                                    <div class="col-12 text-end">
                                        <asp:Button ID="btnCancelFac" runat="server" Text="CANCEL" OnClick="btnCancelFac_Click" Visible="false" CssClass="btn btn-secondary rounded-0 fw-bold px-4" />
                                        <asp:Button ID="btnRegFac" runat="server" Text="REGISTER FACULTY" OnClick="btnRegFac_Click" CssClass="btn btn-success rounded-0 fw-bold px-4" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive shadow-sm">
                            <asp:GridView ID="gvFaculty" runat="server" AutoGenerateColumns="False"
                                CssClass="table table-hover bg-white border align-middle small"
                                DataKeyNames="FacultyID" OnRowCommand="gvPrograms_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="Photo">
                                        <ItemTemplate>
                                            <img src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' style="width: 45px; height: 45px; object-fit: cover;" class="rounded-circle border" alt="Profile" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Department" HeaderText="Dept" />
                                    <asp:BoundField DataField="Designation" HeaderText="Designation" />
                                    <asp:BoundField DataField="Education" HeaderText="Education" />
                                    <asp:TemplateField HeaderText="Actions" ItemStyle-Width="130px">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbEditFac" runat="server" CommandName="EditFac" CommandArgument='<%# Eval("FacultyID") %>' CssClass="btn btn-sm btn-outline-primary py-0 px-2">Edit</asp:LinkButton>
                                            <asp:LinkButton ID="lbDelFac" runat="server" CommandName="DeleteFac" CommandArgument='<%# Eval("FacultyID") %>' OnClientClick="return confirm('Remove this faculty member?');" CssClass="btn btn-sm btn-outline-danger py-0 px-2">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </asp:View>

                </asp:MultiView>
            </ContentTemplate>
            <Triggers>
                <%-- Crucial for FileUpload to work inside UpdatePanel --%>
                <asp:PostBackTrigger ControlID="btnUpdateAdm" />
                <asp:PostBackTrigger ControlID="btnRegFac" />
                <asp:PostBackTrigger ControlID="btnSaveProg" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>