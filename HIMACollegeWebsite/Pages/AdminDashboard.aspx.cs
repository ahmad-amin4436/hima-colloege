using System;
using HIMACollegeWebsite.DAL;

namespace HIMACollegeWebsite
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
                Response.Redirect("AdminLogin.aspx");

            if (!IsPostBack)
                LoadAllData();
        }

        // ================= SWITCH VIEWS =================
        protected void SwitchView(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.Button btn =
                (System.Web.UI.WebControls.Button)sender;

            MainMultiView.ActiveViewIndex =
                Convert.ToInt32(btn.CommandArgument);
        }

        // ================= LOAD DATA =================
        void LoadAllData()
        {
            gvPrograms.DataSource = DataAccessLayer.GetPrograms();
            gvPrograms.DataBind();

            gvAnnouncements.DataSource = DataAccessLayer.GetAnnouncements();
            gvAnnouncements.DataBind();
        }

        // ================= PROGRAMS =================
        protected void btnSaveProg_Click(object sender, EventArgs e)
        {
            int? editId = ViewState["EditID"] != null
                ? Convert.ToInt32(ViewState["EditID"])
                : (int?)null;

            DataAccessLayer.SaveProgram(
                txtProgTitle.Text,
                txtProgDesc.Text,
                ddlProgCat.SelectedValue,
                editId
            );

            ResetProgForm();
            LoadAllData();
            ViewState["EditID"] = null;
        }

        protected void gvPrograms_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditRow")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                // (You can move this to DAL later if needed)
                using (System.Data.SqlClient.SqlConnection con =
                    new System.Data.SqlClient.SqlConnection(
                        System.Configuration.ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString))
                {
                    System.Data.SqlClient.SqlCommand cmd =
                        new System.Data.SqlClient.SqlCommand(
                            "SELECT * FROM Programs WHERE Id=@id", con);

                    cmd.Parameters.AddWithValue("@id", id);

                    con.Open();
                    System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtProgTitle.Text = dr["Title"].ToString();
                        txtProgDesc.Text = dr["Description"].ToString();
                        ddlProgCat.SelectedValue = dr["Category"].ToString();

                        btnSaveProg.Text = "Update Program";
                        btnCancelProg.Visible = true;

                        ViewState["EditID"] = id;
                    }
                }
            }
        }

        protected void gvPrograms_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvPrograms.DataKeys[e.RowIndex].Value);
            DataAccessLayer.DeleteProgram(id);
            LoadAllData();
        }

        // ================= ANNOUNCEMENTS =================
        protected void btnSaveAnn_Click(object sender, EventArgs e)
        {
            DataAccessLayer.AddAnnouncement(
                txtAnnTitle.Text,
                txtAnnDetails.Text
            );

            txtAnnTitle.Text = "";
            txtAnnDetails.Text = "";

            LoadAllData();
        }

        protected void gvAnnouncements_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvAnnouncements.DataKeys[e.RowIndex].Value);
            DataAccessLayer.DeleteAnnouncement(id);
            LoadAllData();
        }

        // ================= HELPERS =================
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ResetProgForm();
        }

        void ResetProgForm()
        {
            txtProgTitle.Text = "";
            txtProgDesc.Text = "";
            btnSaveProg.Text = "Save Program";
            btnCancelProg.Visible = false;
        }
    }
}