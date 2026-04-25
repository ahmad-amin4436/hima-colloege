using System;
using System.Web.UI;

namespace HIMACollegeWebsite
{
    // The ": Page" part below is what was likely missing!
    public partial class Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind your repeaters here as discussed
            }
        }
    }
}