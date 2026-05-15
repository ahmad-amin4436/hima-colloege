using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using HIMACollegeWebsite.DAL;

namespace HIMACollegeWebsite
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Security Check
            if (Session["admin"] == null) Response.Redirect("AdminLogin.aspx");

            if (!IsPostBack)
            {
                BindPrograms();
                BindFaculty();
                BindAdmissions();
            }
        }

        protected void SwitchView(object sender, EventArgs e)
        {
            divMessage.Visible = false;
            int index = int.Parse(((LinkButton)sender).CommandArgument);
            MainMultiView.ActiveViewIndex = index;

            // UI Tab Styling Logic
            btnTabProg.CssClass = index == 0 ? "btn btn-success w-100 rounded-0 py-4 fw-bold border-end" : "btn btn-dark w-100 rounded-0 py-4 fw-bold border-end";
            btnTabAdm.CssClass = index == 1 ? "btn btn-success w-100 rounded-0 py-4 fw-bold border-end" : "btn btn-dark w-100 rounded-0 py-4 fw-bold border-end";
            btnTabFac.CssClass = index == 2 ? "btn btn-success w-100 rounded-0 py-4 fw-bold" : "btn btn-dark w-100 rounded-0 py-4 fw-bold";
        }

        #region Programs (Table: H_Programs)
        private void BindPrograms()
        {
            // Fetching all programs including new image and PDF columns
            gvPrograms.DataSource = DataAccessLayer.GetDataTable("SELECT * FROM H_Programs ORDER BY ProgramID DESC");
            gvPrograms.DataBind();
        }

        protected void btnSaveProg_Click(object sender, EventArgs e)
        {
            // Handle File Uploads (Multiple Images and PDF)
            string img1 = HandleUpload(fuProgImg1, "DAEPrograms");
            string img2 = HandleUpload(fuProgImg2, "DAEPrograms");
            string img3 = HandleUpload(fuProgImg3, "DAEPrograms");
            string img4 = HandleUpload(fuProgImg4, "DAEPrograms");
            string pdfPath = HandleUpload(fuProgPdf, "Syllabus");

            string sql;
            if (string.IsNullOrEmpty(hfProgID.Value))
            {
                // Insert New Program
                sql = @"INSERT INTO H_Programs (Title, Category, Duration, StartDate, Description, ImagePath, ImagePath2, ImagePath3, ImagePath4, PdfPath) 
                        VALUES (@t, @c, @d, @s, @de, @i, @i2, @i3, @i4, @pdf)";
            }
            else
            {
                // Update Existing Program (ISNULL logic ensures we don't overwrite existing files if no new file is uploaded)
                sql = @"UPDATE H_Programs SET Title=@t, Category=@c, Duration=@d, StartDate=@s, Description=@de, 
                        ImagePath=ISNULL(NULLIF(@i,''), ImagePath), 
                        ImagePath2=ISNULL(NULLIF(@i2,''), ImagePath2), 
                        ImagePath3=ISNULL(NULLIF(@i3,''), ImagePath3), 
                        ImagePath4=ISNULL(NULLIF(@i4,''), ImagePath4), 
                        PdfPath=ISNULL(NULLIF(@pdf,''),PdfPath) 
                        WHERE ProgramID=@id";
            }

            SqlParameter[] p = {
                new SqlParameter("@t", txtProgTitle.Text.Trim()),
                new SqlParameter("@c", ddlProgCat.SelectedValue),
                new SqlParameter("@d", txtDuration.Text.Trim()),
                new SqlParameter("@s", txtStartDate.Text.Trim()),
                new SqlParameter("@de", txtProgDesc.Text.Trim()),
                new SqlParameter("@i", img1),
                new SqlParameter("@i2", img2),
                new SqlParameter("@i3", img3),
                new SqlParameter("@i4", img4),
                new SqlParameter("@pdf", pdfPath),
                new SqlParameter("@id", (object)hfProgID.Value ?? DBNull.Value)
            };

            DataAccessLayer.ExecuteNonQuery(sql, p);
            ClearProgFields();
            BindPrograms();
            ShowFeedback("Program saved with attachments successfully!");
        }

        protected void gvPrograms_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "EditProg")
            {
                DataTable dt = DataAccessLayer.GetDataTable("SELECT * FROM H_Programs WHERE ProgramID=" + id);
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];
                    hfProgID.Value = dr["ProgramID"].ToString();
                    txtProgTitle.Text = dr["Title"].ToString();
                    ddlProgCat.SelectedValue = dr["Category"].ToString();
                    txtDuration.Text = dr["Duration"].ToString();
                    txtStartDate.Text = dr["StartDate"].ToString();
                    txtProgDesc.Text = dr["Description"].ToString();

                    btnSaveProg.Text = "UPDATE PROGRAM";
                    btnCancelProg.Visible = true;
                }
            }
            else if (e.CommandName == "DeleteProg")
            {
                DataAccessLayer.ExecuteNonQuery("DELETE FROM H_Programs WHERE ProgramID=" + id);
                BindPrograms();
                ShowFeedback("Program deleted.");
            }
        }
        #endregion

        #region Faculty (Table: H_Faculty)
        private void BindFaculty()
        {
            // Selecting columns needed for the GridView display
            string sql = "SELECT FacultyID, FullName , Department, Designation, Education, ImagePath FROM H_Faculty ORDER BY FacultyID DESC";
            gvFaculty.DataSource = DataAccessLayer.GetDataTable(sql);
            gvFaculty.DataBind();
        }

        protected void btnRegFac_Click(object sender, EventArgs e)
        {
            try
            {
                // 1. Handle the Image Upload (Returns relative path "~/Uploads/Faculty/..." or empty)
                string img = HandleUpload(fuFacImage, "Faculty");

                if (string.IsNullOrEmpty(hfFacID.Value))
                {
                    // INSERT NEW FACULTY
                    string sql = "INSERT INTO H_Faculty (FullName, Department, Designation, Education, ImagePath) VALUES (@n, @d, @de, @e, @i)";

                    // Set default if no image uploaded for new record
                    string finalImg = string.IsNullOrEmpty(img) ? "~/Uploads/Faculty/" : img;

                    SqlParameter[] p = {
                new SqlParameter("@n", txtFacName.Text.Trim()),
                new SqlParameter("@d", ddlFacultyDept.SelectedValue),
                new SqlParameter("@de", txtFacDesig.Text.Trim()),
                new SqlParameter("@e", txtFacEdu.Text.Trim()),
                new SqlParameter("@i", finalImg)
            };
                    DataAccessLayer.ExecuteNonQuery(sql, p);
                    ShowFeedback("Faculty member registered successfully!");
                }
                else
                {
                    // UPDATE EXISTING FACULTY
                    int id = Convert.ToInt32(hfFacID.Value);

                    // Note: ISNULL(NULLIF(@i,''), ImagePath) ensures the image isn't lost if no new file is selected
                    string sql = @"UPDATE H_Faculty SET 
                           FullName=@n, Department=@d, Designation=@de, Education=@e, 
                           ImagePath=ISNULL(NULLIF(@i,''), ImagePath) 
                           WHERE FacultyID=@id";

                    SqlParameter[] p = {
                new SqlParameter("@n", txtFacName.Text.Trim()),
                new SqlParameter("@d", ddlFacultyDept.SelectedValue),
                new SqlParameter("@de", txtFacDesig.Text.Trim()),
                new SqlParameter("@e", txtFacEdu.Text.Trim()),
                new SqlParameter("@i", img),
                new SqlParameter("@id", id)
            };
                    DataAccessLayer.ExecuteNonQuery(sql, p);
                    ShowFeedback("Faculty record updated successfully!");
                }

                ClearFacFields();
                BindFaculty();
            }
            catch (Exception ex)
            {
                ShowFeedback("Error: " + ex.Message);
            }
        }

        protected void gvFaculty_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "EditFac")
            {
                DataTable dt = DataAccessLayer.GetDataTable("SELECT * FROM H_Faculty WHERE FacultyID=" + id);
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];
                    hfFacID.Value = dr["FacultyID"].ToString();
                    txtFacName.Text = dr["FullName"].ToString();
                    ddlFacultyDept.SelectedValue = dr["Department"].ToString();
                    txtFacDesig.Text = dr["Designation"].ToString();
                    txtFacEdu.Text = dr["Education"].ToString();

                    // Change UI to Update Mode
                    btnRegFac.Text = "UPDATE FACULTY";
                    btnCancelFac.Visible = true;

                    // Scroll user to the form
                    divMessage.Visible = false;
                }
            }
            else if (e.CommandName == "DeleteFac")
            {
                DataAccessLayer.ExecuteNonQuery("DELETE FROM H_Faculty WHERE FacultyID=" + id);
                BindFaculty();
                ShowFeedback("Faculty record deleted.");
            }
        }
        #endregion

        #region Admissions (Table: H_Admissions)
        private void BindAdmissions()
        {
            DataTable dt = DataAccessLayer.GetDataTable("SELECT TOP 1 * FROM H_Admissions");
            DataTable displayTable = new DataTable();
            displayTable.Columns.Add("DocType");
            displayTable.Columns.Add("FilePath");

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                displayTable.Rows.Add("Fee Structure", dr["FeeStructurePath"]);
                displayTable.Rows.Add("Admission Form", dr["AdmissionFormPath"]);
                displayTable.Rows.Add("Prospectus", dr["ProspectusPath"]);
            }
            gvAdmissions.DataSource = displayTable;
            gvAdmissions.DataBind();
        }

        protected void btnUpdateAdm_Click(object sender, EventArgs e)
        {
            string fee = fuFee.HasFile ? HandleUpload(fuFee, "Admissions") : "";
            string form = fuForm.HasFile ? HandleUpload(fuForm, "Admissions") : "";
            string pros = fuProspectus.HasFile ? HandleUpload(fuProspectus, "Admissions") : "";

            string sql = @"IF EXISTS (SELECT 1 FROM H_Admissions)
                           UPDATE H_Admissions SET 
                                FeeStructurePath = ISNULL(NULLIF(@fee,''), FeeStructurePath),
                                AdmissionFormPath = ISNULL(NULLIF(@form,''), AdmissionFormPath),
                                ProspectusPath = ISNULL(NULLIF(@pros,''), ProspectusPath),
                                LastUpdated = GETDATE()
                           ELSE
                           INSERT INTO H_Admissions (FeeStructurePath, AdmissionFormPath, ProspectusPath) 
                           VALUES (@fee, @form, @pros)";

            SqlParameter[] p = {
                new SqlParameter("@fee", fee),
                new SqlParameter("@form", form),
                new SqlParameter("@pros", pros)
            };

            DataAccessLayer.ExecuteNonQuery(sql, p);
            BindAdmissions();
            ShowFeedback("Admission files updated successfully!");
        }
        #endregion

        #region Helpers
        private string HandleUpload(FileUpload fu, string folder)
        {
            if (!fu.HasFile) return "";
            try
            {
                string folderPath = Server.MapPath("~/Uploads/" + folder + "/");
                if (!Directory.Exists(folderPath)) Directory.CreateDirectory(folderPath);

                // Use Guid to ensure unique filenames and prevent overwriting
                string fileName = Guid.NewGuid().ToString().Substring(0, 8) + "_" + Path.GetFileName(fu.FileName);
                string fullPath = Path.Combine(folderPath, fileName);
                fu.SaveAs(fullPath);
                return "~/Uploads/" + folder + "/" + fileName;
            }
            catch { return ""; }
        }

        private void ShowFeedback(string msg)
        {
            divMessage.Visible = true;
            lblStatusMessage.Text = msg;
        }

        protected void btnCancelProg_Click(object sender, EventArgs e) { ClearProgFields(); }
        protected void btnCancelFac_Click(object sender, EventArgs e) { ClearFacFields(); }

        private void ClearProgFields()
        {
            hfProgID.Value = "";
            txtProgTitle.Text = "";
            txtProgDesc.Text = "";
            txtDuration.Text = "";
            txtStartDate.Text = "";
            btnSaveProg.Text = "SAVE PROGRAM";
            btnCancelProg.Visible = false;
        }

        private void ClearFacFields()
        {
            hfFacID.Value = "";
            txtFacName.Text = "";
            txtFacDesig.Text = "";
            txtFacEdu.Text = "";
            btnRegFac.Text = "REGISTER FACULTY";
            btnCancelFac.Visible = false;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminLogin.aspx");
        }
        #endregion
    }
}