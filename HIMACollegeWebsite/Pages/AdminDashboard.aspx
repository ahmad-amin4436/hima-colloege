<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true"
CodeBehind="AdminDashboard.aspx.cs"
Inherits="HIMACollegeWebsite.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container py-5">

    <!-- HEADER -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="fw-bold text-dark text-uppercase">Admin Control Center</h2>
        <a href="AdminLogin.aspx" class="btn btn-outline-danger btn-sm">Logout</a>
    </div>

    <!-- NAV BUTTONS -->
    <div class="btn-group w-100 mb-4 shadow-sm">

        <asp:Button ID="btnShowPrograms" runat="server"
            Text="Manage Programs"
            CssClass="btn btn-dark p-3"
            OnClick="SwitchView"
            CommandArgument="0" />

        <asp:Button ID="btnShowAnnounce" runat="server"
            Text="Manage Announcements"
            CssClass="btn btn-success p-3"
            OnClick="SwitchView"
            CommandArgument="1" />

    </div>

    <asp:MultiView ID="MainMultiView" runat="server" ActiveViewIndex="0">

        <!-- ================= PROGRAMS ================= -->
        <asp:View ID="ViewPrograms" runat="server">

            <div class="card border-0 shadow-sm p-4">

                <h4 class="fw-bold text-success mb-3">Add / Edit Program</h4>

                <div class="row g-3">

                    <div class="col-md-4">
                        <asp:TextBox ID="txtProgTitle" runat="server"
                            CssClass="form-control"
                            placeholder="Title"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox ID="txtProgDesc" runat="server"
                            CssClass="form-control"
                            placeholder="Description"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlProgCat" runat="server"
                            CssClass="form-control">
                            <asp:ListItem Text="BS" Value="BS"></asp:ListItem>
                            <asp:ListItem Text="Short Course" Value="Short Course"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-12 mt-2">

                        <asp:Button ID="btnSaveProg" runat="server"
                            Text="Save Program"
                            CssClass="btn btn-success px-4"
                            OnClick="btnSaveProg_Click" />

                        <asp:Button ID="btnCancelProg" runat="server"
                            Text="Cancel"
                            CssClass="btn btn-light"
                            Visible="false"
                            OnClick="btnCancel_Click" />

                    </div>

                </div>

                <div class="mt-4">

                    <asp:GridView ID="gvPrograms" runat="server"
                        CssClass="table table-hover"
                        AutoGenerateColumns="False"
                        DataKeyNames="Id"
                        OnRowDeleting="gvPrograms_RowDeleting"
                        OnRowCommand="gvPrograms_RowCommand">

                        <Columns>

                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:BoundField DataField="Title" HeaderText="Program Name" />
                            <asp:BoundField DataField="Category" HeaderText="Type" />

                            <asp:TemplateField HeaderText="Actions">

                                <ItemTemplate>

                                    <asp:Button ID="btnEdit" runat="server"
                                        Text="Edit"
                                        CommandName="EditRow"
                                        CommandArgument='<%# Eval("Id") %>'
                                        CssClass="btn btn-sm btn-warning me-1" />

                                    <asp:Button ID="btnDelete" runat="server"
                                        Text="Delete"
                                        CommandName="Delete"
                                        OnClientClick="return confirm('Delete this program?');"
                                        CssClass="btn btn-sm btn-danger" />

                                </ItemTemplate>

                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>

            </div>

        </asp:View>

        <!-- ================= ANNOUNCEMENTS ================= -->
        <asp:View ID="ViewAnnounce" runat="server">

            <div class="card border-0 shadow-sm p-4">

                <h4 class="fw-bold text-success mb-3">Post Announcement</h4>

                <div class="row g-3">

                    <div class="col-md-5">
                        <asp:TextBox ID="txtAnnTitle" runat="server"
                            CssClass="form-control"
                            placeholder="Title"></asp:TextBox>
                    </div>

                    <div class="col-md-5">
                        <asp:TextBox ID="txtAnnDetails" runat="server"
                            CssClass="form-control"
                            placeholder="Details"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <asp:Button ID="btnSaveAnn" runat="server"
                            Text="Post"
                            CssClass="btn btn-dark w-100"
                            OnClick="btnSaveAnn_Click" />
                    </div>

                </div>

                <div class="mt-4">

                    <asp:GridView ID="gvAnnouncements" runat="server"
                        CssClass="table table-hover"
                        AutoGenerateColumns="False"
                        DataKeyNames="Id"
                        OnRowDeleting="gvAnnouncements_RowDeleting">

                        <Columns>

                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:BoundField DataField="Title" HeaderText="Announcement" />
                            <asp:BoundField DataField="DatePosted"
                                HeaderText="Date"
                                DataFormatString="{0:MMM dd, yyyy}" />

                            <asp:CommandField ShowDeleteButton="True"
                                DeleteText="Delete"
                                ControlStyle-CssClass="btn btn-sm btn-danger" />

                        </Columns>

                    </asp:GridView>

                </div>

            </div>

        </asp:View>

    </asp:MultiView>

</div>

</asp:Content>