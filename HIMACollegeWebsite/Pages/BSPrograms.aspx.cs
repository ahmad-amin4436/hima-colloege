using System;
using System.Data;
using System.Data.SqlClient;
using HIMACollegeWebsite.DAL;

namespace HIMACollegeWebsite
{
    public partial class BSPrograms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set the parameter for the specific category
                SqlParameter[] p = { new SqlParameter("@cat", "BS Program") };

                // Call DAL to get data
                DataTable dt = DataAccessLayer.GetDataTable("SELECT * FROM H_Programs WHERE Category=@cat", p);

                // Bind to Repeater
                rpBSPrograms.DataSource = dt;
                rpBSPrograms.DataBind();
            }
        }
    }
}