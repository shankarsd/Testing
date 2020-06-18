using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test.AppsCode;
using System.Data;

namespace Test.Tester
{
    public partial class Alloted_Projects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAllotedProjects();
            }
        }
        BLL b = new BLL();
        public void GetAllotedProjects()
        {
            string eid = Session["User"].ToString();
            int tID = b.GetEmpT_ID(eid);
            DataTable dt = b.GetAlloted_Pro_Tst(tID);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                GridView1.EmptyDataText = "No Record Found.";
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }
    }
}