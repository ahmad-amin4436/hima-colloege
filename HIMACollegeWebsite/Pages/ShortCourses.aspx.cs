using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;
using HIMACollegeWebsite.DAL;

namespace HIMACollegeWebsite
{
    public partial class ShortCourses: System.Web.UI.Page
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
                string query = "SELECT Category FROM H_Programs WHERE Category LIKE 'ShortCourses%' GROUP BY Category ORDER BY Category ASC";
                DataTable dtCategories = DataAccessLayer.GetDataTable(query);

                if (dtCategories != null && dtCategories.Rows.Count > 0)
                {
                    var categories = dtCategories.AsEnumerable()
                                                 .Select(r => r.Field<string>("Category"))
                                                 .ToList();

                    rpShortDepartments.DataSource = categories;
                    rpShortDepartments.DataBind();
                }
            }
            catch (Exception)
            {
                // Removed 'ex' to clear warning; log error here if needed
            }
        }

        protected void rpShortDepartments_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string categoryName = (string)e.Item.DataItem;
                Repeater rpInner = (Repeater)e.Item.FindControl("rpShortPrograms");

                if (rpInner != null)
                {
                    string query = "SELECT * FROM H_Programs WHERE Category = @cat";
                    SqlParameter[] p = { new SqlParameter("@cat", categoryName) };
                    DataTable dtInner = DataAccessLayer.GetDataTable(query, p);

                    rpInner.DataSource = dtInner;
                    rpInner.DataBind();
                }
            }
        }

        protected void rpShortPrograms_ItemDataBound(object sender, RepeaterItemEventArgs e)
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