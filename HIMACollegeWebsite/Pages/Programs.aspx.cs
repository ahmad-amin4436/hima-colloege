using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HIMACollegeWebsite
{
    public partial class Programs : System.Web.UI.Page
    {
        // Get the connection string from your Web.config
        string connStr = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPrograms();
            }
        }

        private void LoadPrograms()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                try
                {
                    // 1. Fetch all programs from the database
                    string query = "SELECT * FROM Programs";
                    SqlDataAdapter sda = new SqlDataAdapter(query, con);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    // 2. Filter for BS Programs and bind to rpBSPrograms
                    DataView dvBS = new DataView(dt);
                    dvBS.RowFilter = "Category = 'BS'";
                    rpBSPrograms.DataSource = dvBS;
                    rpBSPrograms.DataBind();

                    // 3. Filter for Short Courses and bind to rpShortCourses
                    DataView dvShort = new DataView(dt);
                    dvShort.RowFilter = "Category = 'Short Course'";
                    rpShortCourses.DataSource = dvShort;
                    rpShortCourses.DataBind();
                }
                catch (Exception ex)
                {
                    // Friendly error handling if database is down
                    // Response.Write("Error: " + ex.Message);
                }
            }
        }
    }
}