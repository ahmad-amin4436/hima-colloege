using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;
using HIMACollegeWebsite.DAL;

namespace HIMACollegeWebsite
{
    public partial class BSPrograms : System.Web.UI.Page
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
                string query = "SELECT Category FROM H_Programs WHERE Category LIKE 'BS%' GROUP BY Category ORDER BY Category ASC";
                DataTable dtCategories = DataAccessLayer.GetDataTable(query);

                if (dtCategories != null && dtCategories.Rows.Count > 0)
                {
                    // 2. Convert the DataTable rows into a simple list of strings for the outer repeater
                    var categories = dtCategories.AsEnumerable()
                                                 .Select(r => r.Field<string>("Category"))
                                                 .ToList();

                    // 3. Bind the outer repeater (rpDepartments)
                    rpBSDepartments.DataSource = categories;
                    rpBSDepartments.DataBind();
                }
            }
            catch (Exception ex)
            {
                // In production, you might want to log this error to a file or database
            }
        }

        protected void rpBSDepartments_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            // Only process Item and AlternatingItem types
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // Retrieve the category name for this specific section (e.g., "Civil", "Electrical")
                string categoryName = (string)e.Item.DataItem;

                // Find the nested repeater (rpPrograms) inside the current outer repeater item
                Repeater rpInner = (Repeater)e.Item.FindControl("rpBSPrograms");

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
        protected void rpBSPrograms_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView drv = (DataRowView)e.Item.DataItem;

                // GET THE FILENAME: e.g., "civil_syllabus.pdf"
                string fileName = drv["PdfPath"].ToString();

                // COMBINE WITH FOLDER: This creates "~/Uploads/Syllabus/civil_syllabus.pdf"
                string fullPath = string.Empty;
                if (!string.IsNullOrEmpty(fileName))
                {
                    fullPath = "~/Uploads/Syllabus/" + fileName;
                }

                HyperLink lnkView = (HyperLink)e.Item.FindControl("lnkViewScheme");
                HyperLink lnkDown = (HyperLink)e.Item.FindControl("lnkDownScheme");

                SetProgramLinks(lnkView, lnkDown, fullPath);
            }
        }

        private void SetProgramLinks(HyperLink lnkView, HyperLink lnkDown, string path)
        {
            if (!string.IsNullOrEmpty(path))
            {
                // This turns ~/Uploads/... into /Uploads/...
                string resolvedPath = ResolveUrl(path);

                lnkView.NavigateUrl = resolvedPath;
                lnkDown.NavigateUrl = resolvedPath;

                // This attribute tells the browser "Don't open this, SAVE it"
                lnkDown.Attributes.Add("download", System.IO.Path.GetFileName(path));
            }
            else
            {
                lnkView.Text = "Scheme Not Available";
                lnkView.Enabled = false;
                lnkDown.Visible = false;
            }
        }
    }
}