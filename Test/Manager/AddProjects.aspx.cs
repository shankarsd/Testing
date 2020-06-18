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
    public partial class AddProjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetResult();
            }
        }
        BLL b = new BLL();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "ADD")
            {
                if (b.AddProjects(txtPr.Text, txtDm.Text, "Pending") > 0)
                {
                    Response.Write("<script>alert('Inserted Sucessfully.')</script>");
                }
            }
            else
            {
                if (b.EditProject(txtPr.Text, txtDm.Text, id) > 0)
                {
                    Response.Write("<script>alert('Updated Sucessfully.')</script>");
                }
                Button1.Text = "ADD";
            }
            GetResult();
            txtDm.Text = txtPr.Text = "";
        }

        public void GetResult()
        {
            DataTable dt = b.GetProjects();
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
        static int id;
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridViewRow r = (GridViewRow)((LinkButton)sender).Parent.Parent;
            txtPr.Text = r.Cells[0].Text;
            txtDm.Text = r.Cells[1].Text;
            id = int.Parse(((LinkButton)sender).CommandArgument);
            Button1.Text = "Update";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                id = int.Parse(((LinkButton)sender).CommandArgument);
                if (b.DeleteProject(id) > 0)
                {
                    Response.Write("<script>alert('Deleted Sucessfully.')</script>");
                }
                GetResult();
            }
            catch
            { }
        }
    }
}