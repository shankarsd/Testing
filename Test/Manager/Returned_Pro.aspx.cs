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
    public partial class Returned_Pro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetTesters();
                GetProjects();
            }
        }
        BLL b = new BLL();
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
            DataTable dt = b.GetAllot_Pr_Rst_Return();
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
                    int aId = int.Parse(cb.AccessKey);
                    ct++;
                    res = b.Up_AllotProjects(id, int.Parse(ddlDes.SelectedItem.Value), dt, aId);
                    res = res + b.UpdateProject(id);
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
    }
}