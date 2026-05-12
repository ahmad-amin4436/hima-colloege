using System;
using System.Data;
using System.Web.UI.WebControls;
using HIMACollegeWebsite.DAL;

namespace HIMACollegeWebsite
{
    public partial class Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) BindAllDepartments();
        }

        private void BindAllDepartments()
        {
            DataTable dt = DataAccessLayer.GetDataTable("SELECT FullName, Department, Designation, Education AS Qualification, ImagePath FROM H_Faculty");

            BindDept(rpCivil, dt, "Civil");
            BindDept(rpElectrical, dt, "Electrical");
            BindDept(rpCIT, dt, "CIT");
            BindDept(rpHVAC, dt, "HVAC&R");
            BindDept(rpMechanical, dt, "Mechanical");
        }

        private void BindDept(Repeater rp, DataTable dt, string dept)
        {
            DataView dv = new DataView(dt);
            dv.RowFilter = $"Department = '{dept}'";
            rp.DataSource = dv;
            rp.DataBind();
        }
    }
}