using System;
using System.Data;
using System.Data.SqlClient;
using HIMACollegeWebsite.DAL;

namespace HIMACollegeWebsite
{
    public partial class ShortCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlParameter[] p = { new SqlParameter("@cat", "Short Course") };

                DataTable dt = DataAccessLayer.GetDataTable("SELECT * FROM H_Programs WHERE Category=@cat", p);

                rpShort.DataSource = dt;
                rpShort.DataBind();
            }
        }
    }
}