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
            if (Session["admin"] == null) Response.Redirect("AdminLogin.aspx");
            if (!IsPostBack) { BindPrograms(); BindFaculty(); }
        }

        // --- NAVIGATION ---
        protected void SwitchView(object sender, EventArgs e)
        {
            int index = int.Parse(((LinkButton)sender).CommandArgument);
            MainMultiView.ActiveViewIndex = index;
            btnTabProg.CssClass = index == 0 ? "btn btn-success w-100 rounded-0 py-4 fw-bold" : "btn btn-dark w-100 rounded-0 py-4 fw-bold";
            btnTabAdm.CssClass = index == 1 ? "btn btn-success w-100 rounded-0 py-4 fw-bold" : "btn btn-dark w-100 rounded-0 py-4 fw-bold";
            btnTabFac.CssClass = index == 2 ? "btn btn-success w-100 rounded-0 py-4 fw-bold" : "btn btn-dark w-100 rounded-0 py-4 fw-bold";
        }

        // --- BINDING ---
        private void BindPrograms()
        {
            gvPrograms.DataSource = DataAccessLayer.GetDataTable("SELECT * FROM H_Programs ORDER BY ProgramID DESC");
            gvPrograms.DataBind();
        }

        private void BindFaculty()
        {
            // Specifically selecting ImagePath and Education to avoid DataBinding errors
            gvFaculty.DataSource = DataAccessLayer.GetDataTable("SELECT FacultyID, FullName as Name, Department, Designation, Education, ImagePath FROM H_Faculty ORDER BY FacultyID DESC");
            gvFaculty.DataBind();
        }

        // --- ACTIONS ---
        protected void btnSaveProg_Click(object sender, EventArgs e)
        {
            string sql = string.IsNullOrEmpty(hfProgID.Value)
                ? "INSERT INTO H_Programs (Title, Category, Duration, StartDate, Description) VALUES (@t, @c, @d, @s, @de)"
                : "UPDATE H_Programs SET Title=@t, Category=@c, Duration=@d, StartDate=@s, Description=@de WHERE ProgramID=@id";

            SqlParameter[] p = {
                new SqlParameter("@t", txtProgTitle.Text.Trim()),
                new SqlParameter("@c", ddlProgCat.SelectedValue),
                new SqlParameter("@d", txtDuration.Text.Trim()),
                new SqlParameter("@s", txtStartDate.Text.Trim()),
                new SqlParameter("@de", txtProgDesc.Text.Trim()),
                new SqlParameter("@id", (object)hfProgID.Value ?? DBNull.Value)
            };

            DataAccessLayer.ExecuteNonQuery(sql, p);
            ClearProgFields(); BindPrograms(); ShowAlert("Program Saved!");
        }

        protected void btnRegFac_Click(object sender, EventArgs e)
        {
            string img = HandleUpload(fuFacImage, "Faculty");
            string sql = string.IsNullOrEmpty(hfFacID.Value)
                ? "INSERT INTO H_Faculty (FullName, Department, Designation, Education, ImagePath) VALUES (@n, @d, @de, @e, @i)"
                : "UPDATE H_Faculty SET FullName=@n, Department=@d, Designation=@de, Education=@e, ImagePath=ISNULL(NULLIF(@i,''), ImagePath) WHERE FacultyID=@id";

            SqlParameter[] p = {
                new SqlParameter("@n", txtFacName.Text.Trim()),
                new SqlParameter("@d", ddlFacultyDept.SelectedValue),
                new SqlParameter("@de", txtFacDesig.Text.Trim()),
                new SqlParameter("@e", txtFacEdu.Text.Trim()),
                new SqlParameter("@i", img),
                new SqlParameter("@id", (object)hfFacID.Value ?? DBNull.Value)
            };

            DataAccessLayer.ExecuteNonQuery(sql, p);
            ClearFacFields(); BindFaculty(); ShowAlert("Faculty Saved!");
        }

        protected void btnUpdateAdm_Click(object sender, EventArgs e)
        {
            string fee = HandleUpload(fuFee, "Admissions");
            string form = HandleUpload(fuForm, "Admissions");
            string pros = HandleUpload(fuProspectus, "Admissions");
            DataAccessLayer.UpdateAdmissions(fee, form, pros);
            ShowAlert("Admissions Updated!");
        }

        // --- GRIDVIEW LOGIC ---
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
                    btnRegFac.Text = "UPDATE FACULTY";
                    btnCancelFac.Visible = true;
                }
            }
            else if (e.CommandName == "DeleteFac")
            {
                DataAccessLayer.ExecuteNonQuery("DELETE FROM H_Faculty WHERE FacultyID=" + id);
                BindFaculty();
            }
        }

        // --- HELPERS ---
        protected void btnCancelProg_Click(object sender, EventArgs e) { ClearProgFields(); }
        protected void btnCancelFac_Click(object sender, EventArgs e) { ClearFacFields(); }

        private void ClearProgFields() { hfProgID.Value = ""; txtProgTitle.Text = ""; txtProgDesc.Text = ""; txtDuration.Text = ""; txtStartDate.Text = ""; btnSaveProg.Text = "SAVE PROGRAM"; btnCancelProg.Visible = false; }
        private void ClearFacFields() { hfFacID.Value = ""; txtFacName.Text = ""; txtFacDesig.Text = ""; txtFacEdu.Text = ""; btnRegFac.Text = "REGISTER FACULTY"; btnCancelFac.Visible = false; }

        private string HandleUpload(FileUpload fu, string folder)
        {
            if (!fu.HasFile) return "";
            string folderPath = Server.MapPath("~/Uploads/" + folder + "/");
            if (!Directory.Exists(folderPath)) Directory.CreateDirectory(folderPath);
            string fileName = Guid.NewGuid().ToString().Substring(0, 8) + "_" + Path.GetFileName(fu.FileName);
            fu.SaveAs(Path.Combine(folderPath, fileName));
            return "~/Uploads/" + folder + "/" + fileName;
        }

        private void ShowAlert(string msg) { ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"alert('{msg}');", true); }
        protected void btnLogout_Click(object sender, EventArgs e) { Session.Abandon(); Response.Redirect("AdminLogin.aspx"); }
    }
}