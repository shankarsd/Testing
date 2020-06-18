using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test.AppsCode;

namespace Test.Tester
{
    public partial class Tester_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            eid = Session["User"].ToString();
            tID = b.GetEmpT_ID(eid);
            Nm = b.GetEmpT_Name(eid);
            lblName.Text = Nm;
            AllotedPro();
            ProResCounts();
        }
        BLL b = new BLL();
        int tID;
        string eid,Nm;

        public void AllotedPro()
        {
            int ap = b.AllotedProCount(tID);
            Label1.Text = ap.ToString();
        }

        public void ProResCounts()
        {
            int rs = b.ProResCounts(tID);
            Label3.Text = rs.ToString();
        }
    }
}