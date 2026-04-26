using System;
using System.Data;
using System.Web.UI.WebControls;
using HIMACollegeWebsite.DAL;

namespace HIMACollegeWebsite
{
    public partial class Admissions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDocs();
            }
        }

        private void LoadDocs()
        {
            // Fetching data using your DAL
            DataTable dt = DataAccessLayer.GetDataTable("SELECT TOP 1 FeeStructurePath, AdmissionFormPath, ProspectusPath FROM H_Admissions WHERE ID=1");

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                // Calling the helper method once for each set of controls
                SetLinks(lnkViewFee, lnkDownFee, dr["FeeStructurePath"].ToString());
                SetLinks(lnkViewForm, lnkDownForm, dr["AdmissionFormPath"].ToString());
                SetLinks(lnkViewPros, lnkDownPros, dr["ProspectusPath"].ToString());
            }
        }

        // This is the SINGLE helper method. 
        // Delete any other method named "SetLinks" in this file!
        private void SetLinks(HyperLink lnkView, HyperLink lnkDown, string path)
        {
            if (!string.IsNullOrEmpty(path))
            {
                string resolvedPath = ResolveUrl(path);
                lnkView.NavigateUrl = resolvedPath;
                lnkDown.NavigateUrl = resolvedPath;

                // Forces the browser to download instead of open
                lnkDown.Attributes.Add("download", System.IO.Path.GetFileName(path));
            }
            else
            {
                lnkView.Text = "Not Available";
                lnkView.Enabled = false;
                lnkDown.Visible = false;
            }
        }
    }
}