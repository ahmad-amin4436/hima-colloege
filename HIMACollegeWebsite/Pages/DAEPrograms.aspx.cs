using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;
using HIMACollegeWebsite.DAL;

namespace HIMACollegeWebsite
{
    public partial class DAEPrograms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSections();
            }
        }

        private void BindSections()
        {
            try
            {
                // 1. Get unique categories that start with DAE to create the main sections
                string query = "SELECT Category FROM H_Programs WHERE Category LIKE 'DAE%' GROUP BY Category ORDER BY Category ASC";
                DataTable dtCategories = DataAccessLayer.GetDataTable(query);

                if (dtCategories != null && dtCategories.Rows.Count > 0)
                {
                    // 2. Convert the DataTable rows into a simple list of strings for the outer repeater
                    var categories = dtCategories.AsEnumerable()
                                                 .Select(r => r.Field<string>("Category"))
                                                 .ToList();

                    // 3. Bind the outer repeater (rpDepartments)
                    rpDepartments.DataSource = categories;
                    rpDepartments.DataBind();
                }
            }
            catch (Exception ex)
            {
                // In production, you might want to log this error to a file or database
            }
        }

        protected void rpDepartments_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            // Only process Item and AlternatingItem types
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // Retrieve the category name for this specific section (e.g., "Civil", "Electrical")
                string categoryName = (string)e.Item.DataItem;

                // Find the nested repeater (rpPrograms) inside the current outer repeater item
                Repeater rpInner = (Repeater)e.Item.FindControl("rpPrograms");

                if (rpInner != null)
                {
                    // 4. Fetch all programs belonging to this specific technology category
                    string query = "SELECT * FROM H_Programs WHERE Category = @cat";
                    SqlParameter[] p = { new SqlParameter("@cat", categoryName) };

                    DataTable dtInner = DataAccessLayer.GetDataTable(query, p);

                    // Bind the inner data
                    rpInner.DataSource = dtInner;
                    rpInner.DataBind();
                }
            }
        }
    }
}