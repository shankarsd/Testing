using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Test.AppsCode;

namespace Test.Manager
{
    public partial class AllotProjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProjects();
                GetTesters();
            }
        }
        BLL b = new BLL();
        protected void Button1_Click(object sender, EventArgs e)
        {
            int ct = 0, res = 0;
            string dt = System.DateTime.Now.ToString("d");
            for (int i = 0; i < gv.Rows.Count; i++)
            {
                RadioButton cb = (RadioButton)gv.Rows[i].FindControl("RowSelector");
                if (cb.Checked)
                {
                    int id = int.Parse(cb.ToolTip);
                    ct++;
                    res = b.AllotProjects(id, int.Parse(ddlDes.SelectedItem.Value), dt);
                    res = res +  b.UpdateProject(id);
                }
            }
            if (ct == 0)
            {
                Response.Write("<script>alert('Select Record..')</script>");
            }
            if (res > 1)
            {
                Response.Write("<script>alert('Project Alloted..')</script>");
            }
            GetTesters();
            GetProjects();
        }

        public void GetTesters()
        {
            DataTable dt = b.GetTest_F_Alot();
            ddlDes.DataSource = dt;
            ddlDes.DataTextField = "Name";
            ddlDes.DataValueField = "Tst_Id";
            ddlDes.DataBind();
            ddlDes.Items.Insert(0, "--Select Tester--");
        }

        public void GetProjects()
        {
            DataTable dt = b.GetProj_Pend();
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