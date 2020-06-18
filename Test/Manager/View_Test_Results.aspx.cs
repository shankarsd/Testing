using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test.AppsCode;
using System.Data;

namespace Test.Manager
{
    public partial class View_Test_Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProjectResult();
            }
        }
        BLL b = new BLL();

        public void ProjectResult()
        {
            DataTable dt = b.ProjectsResult();
            if (dt.Rows.Count > 0)
            {
                gv.DataSource = dt;
                gv.DataBind();
            }
            else
            {
                gv.EmptyDataText = "No record found.";
                gv.DataSource = null;
                gv.DataBind();
            }
        }
    }
}