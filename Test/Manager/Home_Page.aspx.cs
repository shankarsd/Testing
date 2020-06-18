using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test.AppsCode;

namespace Test.Manager
{
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Project();
            AlotProject();
            ReturnedProjects();
            ProjectResult();
        }
        BLL b = new BLL();
        public void Project()
        {
            int pro = b.ProjectCount();
            Label1.Text = pro.ToString();
        }

        public void AlotProject()
        {
            int pc = b.ProPendingCount();
            Label2.Text = pc.ToString();
        }

        public void ReturnedProjects()
        {
            int rt = b.ReturnedProjectCount();
            Label3.Text = rt.ToString();
        }

        public void ProjectResult()
        {
            int pr = b.ProResCount();
            Label4.Text = pr.ToString();
        }
    }
}