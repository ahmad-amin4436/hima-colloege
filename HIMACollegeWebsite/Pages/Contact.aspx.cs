using System;

namespace HIMACollegeWebsite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void btnSend_Click(object sender, EventArgs e)
        {
            DAL.DataAccessLayer.SaveContactMessage(
                txtName.Text,
                txtEmail.Text,
                txtSubject.Text,
                txtMessage.Text
            );

            Response.Write("<script>alert('Message sent successfully!');</script>");

            txtName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
        }
    }
}