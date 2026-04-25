using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HIMACollegeWebsite
{
    public partial class AnnouncementsPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        void LoadData()
        {
            SqlDataAdapter da = new SqlDataAdapter(
            "select * from Announcements order by Id desc", con);

            DataTable dt = new DataTable();
            da.Fill(dt);

            rpAllAnnouncements.DataSource = dt;
            rpAllAnnouncements.DataBind();
        }
    }
}