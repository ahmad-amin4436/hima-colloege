using System;
using System.Collections.Generic;
using System.Web.UI;

namespace HIMACollegeWebsite
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set dynamic Page Title
            this.Title = "Home | HIMA College of Engineering Technology";

            if (!IsPostBack)
            {
                // The error happened here because old code tried to find 'rpAnnouncements'
                // We have removed that logic to match your new modern UI.
            }
        }
    }
}