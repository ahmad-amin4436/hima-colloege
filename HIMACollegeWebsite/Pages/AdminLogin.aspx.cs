using System;

namespace HIMACollegeWebsite
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            bool isValid = DAL.DataAccessLayer.AdminLogin(
                txtUser.Text.Trim(),
                txtPass.Text.Trim()
            );

            if (isValid)
            {
                Session["admin"] = txtUser.Text;
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Username or Password";
            }
        }
    }
}