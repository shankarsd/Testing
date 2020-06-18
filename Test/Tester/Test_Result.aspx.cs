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
    public partial class Test_Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProjects();
            }
        }
        BLL b = new BLL();
        public void GetProjects()
        {
            string eid = Session["User"].ToString();
            int tID = b.GetEmpT_ID(eid);
            DataTable dt = b.GetAllot_Pr_Rst(tID);
            if (dt.Rows.Count > 0)
            {
                Button1.Visible = true;
                Button2.Visible = true;
                gv.DataSource = dt;
                gv.DataBind();
            }
            else
            {
                Button1.Visible = false;
                Button2.Visible = false;
                gv.EmptyDataText = "No Record Found.";
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
                    ct++;
                    res = b.Update_Alt_Pro(txtPr.Text, dt, id);
                }
            }
            if (ct == 0)
            {
                Response.Write("<script>alert('Select Record..')</script>");
            }
            if (res > 0)
            {
                Response.Write("<script>alert('Project Finished..')</script>");
            }
            txtPr.Text = "";
            GetProjects();
        }

        protected void Button2_Click(object sender, EventArgs e)
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
                    res = b.Update_Alt_Pro_Rej(txtPr.Text, dt, id);
                }
            }
            if (ct == 0)
            {
                Response.Write("<script>alert('Select Record..')</script>");
            }
            if (res > 0)
            {
                Response.Write("<script>alert('Project Rejected..')</script>");
            }
            txtPr.Text = "";
            GetProjects();
        }
    }
}