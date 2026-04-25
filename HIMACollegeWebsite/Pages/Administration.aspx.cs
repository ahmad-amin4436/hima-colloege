using System;
using System.Web.UI;

namespace HIMACollegeWebsite
{
    public partial class Administration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This page is mostly static content based on the Year Book, 
            // so we don't need complex database logic here unless you 
            // want to load the committee members from a table later.

            if (!IsPostBack)
            {
                // Title for the browser tab
                Page.Title = "Administration | HIMA College";
            }
        }
    }
}